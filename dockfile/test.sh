
#!/bin/bash
##########################################
# Testas os Playbooks
#
##########################################
clear
ansible-playbook -i ../exemplo_01/inventario_01.ini ../exemplo_01/play_01.yaml
ansible-playbook -i ../exemplo_01/inventario_01.ini ../exemplo_01/play_02.yaml
ansible-playbook -i ../exemplo_01/inventario_03.ini ../exemplo_01/play_03.yaml
ansible-playbook -i ../exemplo_01/inventario_04.ini ../exemplo_01/play_04.yaml


