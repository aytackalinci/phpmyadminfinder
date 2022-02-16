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
		let "x++"
		else 
		echo "NOT VULN: ${SITE}"
	fi
	
	if [[ $(curl --connect-timeout 4 --max-time 4 -kLs "${SITE}/mysql/" ) =~ 'pma_username' ]]; then
		echo "[+] VULN: ${SITE}/mysql/"
		let "x++"
		else 
		echo "NOT VULN: ${SITE}"
	fi
	
	if [[ $(curl --connect-timeout 4 --max-time 4 -kLs "${SITE}/myadmin/" ) =~ 'pma_username' ]]; then
		echo "[+] VULN: ${SITE}/myadmin/"
		let "x++"
		else 
		echo "NOT VULN: ${SITE}"
	fi
	
	if [[ $(curl --connect-timeout 4 --max-time 4 -kLs "${SITE}/phpmyadmin2/" ) =~ 'pma_username' ]]; then
		echo "[+] VULN: ${SITE}/phpmyadmin2/"
		let "x++"
		else 
		echo "NOT VULN: ${SITE}"
	fi
	
	if [[ $(curl --connect-timeout 4 --max-time 4 -kLs "${SITE}/phpMyAdmin2/" ) =~ 'pma_username' ]]; then
		echo "[+] VULN: ${SITE}/phpMyAdmin2/"
		let "x++"
		else 
		echo "NOT VULN: ${SITE}"
	fi
	
	if [[ $(curl --connect-timeout 4 --max-time 4 -kLs "${SITE}/phpMyAdmin-2/" ) =~ 'pma_username' ]]; then
		echo "[+] VULN: ${SITE}/phpMyAdmin-2/"
		let "x++"
		else 
		echo "NOT VULN: ${SITE}"
	fi
	
	if [[ $(curl --connect-timeout 4 --max-time 4 -kLs "${SITE}/mysqladmin/" ) =~ 'pma_username' ]]; then
		echo "[+] VULN: ${SITE}/mysqladmin/"
		let "x++"
		else 
		echo "NOT VULN: ${SITE}"
	fi
	
	if [[ $(curl --connect-timeout 4 --max-time 4 -kLs "${SITE}/webdb/" ) =~ 'pma_username' ]]; then
		echo "[+] VULN: ${SITE}/webdb/"
		let "x++"
		else 
		echo "NOT VULN: ${SITE}"
	fi
	
	if [[ $(curl --connect-timeout 4 --max-time 4 -kLs "${SITE}/mysql-admin/" ) =~ 'pma_username' ]]; then
		echo "[+] VULN: ${SITE}/mysql-admin/"
		let "x++"
		else 
		echo "NOT VULN: ${SITE}"
	fi
	
	if [[ $(curl --connect-timeout 4 --max-time 4 -kLs "${SITE}/webdb/" ) =~ 'pma_username' ]]; then
		echo "[+] VULN: ${SITE}/webdb/"
		let "x++"
		else 
		echo "NOT VULN: ${SITE}"
	fi
	
	if [[ $(curl --connect-timeout 4 --max-time 4 -kLs "${SITE}/sqlmanager/" ) =~ 'pma_username' ]]; then
		echo "[+] VULN: ${SITE}/sqlmanager/"
		let "x++"
		else 
		echo "NOT VULN: ${SITE}"
	fi
	
	if [[ $(curl --connect-timeout 4 --max-time 4 -kLs "${SITE}/myadmin/" ) =~ 'pma_username' ]]; then
		echo "[+] VULN: ${SITE}/myadmin/"
		let "x++"
		else 
		echo "NOT VULN: ${SITE}"
	fi
	
	if [[ $(curl --connect-timeout 4 --max-time 4 -kLs "${SITE}/mysql/" ) =~ 'pma_username' ]]; then
		echo "[+] VULN: ${SITE}/mysql/"
		let "x++"
		else 
		echo "NOT VULN: ${SITE}"
	fi
	
	if [[ $(curl --connect-timeout 4 --max-time 4 -kLs "${SITE}/PMA/" ) =~ 'pma_username' ]]; then
		echo "[+] VULN: ${SITE}/PMA/"
		let "x++"
		else 
		echo "NOT VULN: ${SITE}"
		echo "VULN TOTAL : $x" 
		let "x=0"
		echo "------------------------------------------------------"
	fi
	
	
	
done
