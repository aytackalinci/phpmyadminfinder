#!/bin/bash
declare -i x=0
LISTS=$1
if [[ ! -f ${LISTS} ]]; then
	echo "ERROR: ${LISTS} not found"
	echo "usage: bash $0 file.txt"
	exit
fi

for SITE in $(cat $LISTS);
do
	if [[ $(curl --connect-timeout 4 --max-time 4 -kLs "${SITE}/phpMyAdmin/" ) =~ 'pma_username' ]]; then
		echo "[+] VULN: ${SITE}/phpMyAdmin/"
		let "x++"
		else 
		echo "NOT VULN: ${SITE}"
	fi
	
	
	if [[ $(curl --connect-timeout 4 --max-time 4 -kLs "${SITE}/phpmyadmin/" ) =~ 'pma_username' ]]; then
		echo "[+] VULN: ${SITE}/phpmyadmin/"
		let "x++"
		else 
		echo "NOT VULN: ${SITE}"
	fi
	
	if [[ $(curl --connect-timeout 4 --max-time 4 -kLs "${SITE}/pma/" ) =~ 'pma_username' ]]; then
		echo "[+] VULN: ${SITE}/pma/"
		x++
		else 
		echo "NOT VULN: ${SITE}"
	fi
	
	if [[ $(curl --connect-timeout 4 --max-time 4 -kLs "${SITE}/mysql/" ) =~ 'pma_username' ]]; then
		echo "[+] VULN: ${SITE}/mysql/"
		x++
		else 
		echo "NOT VULN: ${SITE}"
	fi
	
	if [[ $(curl --connect-timeout 4 --max-time 4 -kLs "${SITE}/myadmin/" ) =~ 'pma_username' ]]; then
		echo "[+] VULN: ${SITE}/myadmin/"
		x++
		else 
		echo "NOT VULN: ${SITE}"
	fi
	
	if [[ $(curl --connect-timeout 4 --max-time 4 -kLs "${SITE}/phpmyadmin2/" ) =~ 'pma_username' ]]; then
		echo "[+] VULN: ${SITE}/phpmyadmin2/"
		x++
		else 
		echo "NOT VULN: ${SITE}"
	fi
	
	if [[ $(curl --connect-timeout 4 --max-time 4 -kLs "${SITE}/phpMyAdmin2/" ) =~ 'pma_username' ]]; then
		echo "[+] VULN: ${SITE}/phpMyAdmin2/"
		x++
		else 
		echo "NOT VULN: ${SITE}"
	fi
	
	if [[ $(curl --connect-timeout 4 --max-time 4 -kLs "${SITE}/phpMyAdmin-2/" ) =~ 'pma_username' ]]; then
		echo "[+] VULN: ${SITE}/phpMyAdmin-2/"
		x++
		else 
		echo "NOT VULN: ${SITE}"
	fi
	
	if [[ $(curl --connect-timeout 4 --max-time 4 -kLs "${SITE}/mysqladmin/" ) =~ 'pma_username' ]]; then
		echo "[+] VULN: ${SITE}/mysqladmin/"
		x++
		else 
		echo "NOT VULN: ${SITE}"
	fi
	
	if [[ $(curl --connect-timeout 4 --max-time 4 -kLs "${SITE}/webdb/" ) =~ 'pma_username' ]]; then
		echo "[+] VULN: ${SITE}/webdb/"
		x++
		else 
		echo "NOT VULN: ${SITE}"
	fi
	
	if [[ $(curl --connect-timeout 4 --max-time 4 -kLs "${SITE}/mysql-admin/" ) =~ 'pma_username' ]]; then
		echo "[+] VULN: ${SITE}/mysql-admin/"
		x++
		else 
		echo "NOT VULN: ${SITE}"
	fi
	
	if [[ $(curl --connect-timeout 4 --max-time 4 -kLs "${SITE}/webdb/" ) =~ 'pma_username' ]]; then
		echo "[+] VULN: ${SITE}/webdb/"
		x++
		else 
		echo "NOT VULN: ${SITE}"
	fi
	
	if [[ $(curl --connect-timeout 4 --max-time 4 -kLs "${SITE}/sqlmanager/" ) =~ 'pma_username' ]]; then
		echo "[+] VULN: ${SITE}/sqlmanager/"
		x++
		else 
		echo "NOT VULN: ${SITE}"
	fi
	
	if [[ $(curl --connect-timeout 4 --max-time 4 -kLs "${SITE}/myadmin/" ) =~ 'pma_username' ]]; then
		echo "[+] VULN: ${SITE}/myadmin/"
		x++
		else 
		echo "NOT VULN: ${SITE}"
	fi
	
	if [[ $(curl --connect-timeout 4 --max-time 4 -kLs "${SITE}/mysql/" ) =~ 'pma_username' ]]; then
		echo "[+] VULN: ${SITE}/mysql/"
		x++
		else 
		echo "NOT VULN: ${SITE}"
	fi
	
	if [[ $(curl --connect-timeout 4 --max-time 4 -kLs "${SITE}/PMA/" ) =~ 'pma_username' ]]; then
		echo "[+] VULN: ${SITE}/PMA/"
		x++
		else 
		echo "NOT VULN: ${SITE}"
		echo "VULN TOTAL : $x" 
		let "x=0"
		echo "-----------------------------------------------------"
	fi
	
	
	
done
