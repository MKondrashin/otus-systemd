#! /bin/sh


###########
###timer###
###########
cp /vagrant/watchlog.sh /opt/watchlog.sh
chmod +x /opt/watchlog.sh
cp /vagrant/watchlog.service /etc/systemd/system/watchlog.service
cp /vagrant/watchlog.timer /etc/systemd/system/watchlog.timer
cp /vagrant/watchlog.log /var/log/watchlog.log
cp /vagrant/watchlog /etc/sysconfig/watchlog
chmod -x /etc/systemd/system/watchlog.service
chmod -x /etc/systemd/system/watchlog.timer
systemctl start watchlog.timer


################
###spawn-fcgi###
################
yum install epel-release -y
yum install spawn-fcgi php php-cli mod_fcgid httpd -y
cp /vagrant/spawn-fcgi /etc/sysconfig/spawn-fcgi
cp /vagrant/spawn-fcgi.service /etc/systemd/system/spawn-fcgi.service
chmod -x /etc/systemd/system/spawn-fcgi.service
systemctl start spawn-fcgi


##################
###apache-httpd###
##################
cp /vagrant/first.conf /etc/httpd/conf/first.conf
cp /vagrant/second.conf /etc/httpd/conf/second.conf
systemctl start httpd@first
systemctl start httpd@second