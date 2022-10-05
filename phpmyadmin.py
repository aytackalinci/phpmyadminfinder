import requests
import sys
import platform
import os
from platform import system
from multiprocessing.dummy import Pool
from requests.packages.urllib3.exceptions import InsecureRequestWarning
def banner():
    print("""
    # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #
    #   Mass phpmyadmin page scanner & fast - multiprocces            #
    #           Author : Aytac Kalinci                                #
    #                                                                 #
    # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #
    """)
def clear():
    if system() == "Linux":
        os.system("clear")
    else:
        os.system("cls")
clear()
banner()
requests.packages.urllib3.disable_warnings(InsecureRequestWarning)
listkontol = input("\033[32m[\033[37m!\033[32m]\033[37m Website list: ")
listSite = listkontol
op = [i.strip() for i in open(listSite, "r").readlines()]
 
def check(site):
  try:
    r = requests.get('http://{}/'.format(site) + "/phpmyadmin/", verify=False, timeout=10)
    ff = open("phpmyadmin.txt", "a+")
    if "pma_username" in r.text:
      print("\033[37m" + site + "/phpmyadmin/\033[37m > \033[32mVULN")
      ff.write(site + "/phpmyadmin/\n")
    else:
      c = requests.get('http://{}/'.format(site) + "/phpMyAdmin/", verify=False, timeout=10)
      if "pma_username" in c.text:
        print("\033[37m" + site + "/phpMyAdmin/\033[37m > \033[32mVULN")
        ff.write(site + "/phpMyAdmin/\n")
      else:
        b = requests.get('http://{}/'.format(site) + "/phpMyAdmin/", verify=False, timeout=10)
        if "pma_username" in b.text:
          print("\033[37m" + site + "/phpMyAdmin/\033[37m > \033[32mVULN")
          ff.write(site + "/phpMyAdmin/\n")
        else:
          k = requests.get('http://{}/'.format(site) + "/pma/", verify=False, timeout=10)
          if "pma_username" in k.text:
            print("\033[37m" + site + "/pma/\033[37m > \033[32mVULN")
            ff.write(site + "/pma/\n")
          else:
            print("\033[37m" + site + "\033[37m > \033[31mHATA!")
  except:
    print("\033[37m" + site + "\033[37m > \033[31mHATA!")
 
tod = Pool(600)
tod.map(check, op)
tod.close()
tod.join()
