#!/usr/bin/python
import os
import platform

dist = list(platform.dist())
os_type = dist[0]
os_version = dist[1]

def install_zabbix_repo():
 if os_type in ['centos','redhat'] :
  print ('Installing Zabbix Repo')
  os.system('yum install -y https://repo.zabbix.com/zabbix/3.0/rhel/' + os_version[0] +'/x86_64/zabbix-release-3.0-1.el' + os_version[0] +'.noarch.rpm')
install_zabbix_repo()

print ('Installing Zabbix Agent')
os.system('yum install -y zabbix-agent')
