###################################################
#!/bin/bash
#
# Configura o Lab-01
# 01 docker controller
# 05 docker target
#
# Elaborado por Pedro J von Glehn S.
# Data: 08/09/2022
#
#####################################################

clear
date
docker container rm -f $(docker container ps -qa)
ansible-playbook /ansible_lab/dockfile/lab01_container_run.yaml

echo "-----------IPs - Configurados----------------"
docker container inspect -f "{{ .NetworkSettings.IPAddress  }}" $(docker container ps -qa) 

for i in $(docker container inspect -f "{{ .NetworkSettings.IPAddress  }}" $(docker container ps -qa) )
do
  ssh-keygen -f "/root/.ssh/known_hosts" -R $i 
done  

#rm /home/user1/.ssh/kno*


clear
echo "##########################################"
echo "# Laboratorio configurado - $(date)"
echo '##########################################'
docker container ls
echo "##########################################"
echo "# Laboratorio configurado - IPs $(date)"
echo '##########################################'
#docker container ls
docker container inspect $(docker container ps -qa) | grep -i ipaddress
#docker container inspect $(docker container ps -qa) | grep -i ipaddress | grep "172"


# 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