
#!/bin/bash
##########################################
# Testas os Playbooks
#
##########################################
<<<<<<< HEAD

export ANSIBLE_HOST_KEY_CHECKING=False


=======
>>>>>>> 4c60a375bdbf476ecc58173eb67acfaa17bd852d
clear
ansible-playbook -i ../exemplo_01/inventario_01.ini ../exemplo_01/play_01.yaml
ansible-playbook -i ../exemplo_01/inventario_01.ini ../exemplo_01/play_02.yaml
ansible-playbook -i ../exemplo_01/inventario_03.ini ../exemplo_01/play_03.yaml
ansible-playbook -i ../exemplo_01/inventario_04.ini ../exemplo_01/play_04.yaml


