#!/bin/bash

#Script para aprovisionamento de uma configuração simples de usuários grupos e permissões em Linux

#criação dos grupos
groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

#criação dos usuários incluindo nos respectivos grupos
useradd carlos -c "Carlos Tux" -G GRP_ADM -m -s /bin/bash -p $(openssl passwd -6 Senha123)
passwd carlos -e
useradd maria -c "Maria DB" -G GRP_ADM -m -s /bin/bash -p $(openssl passwd -6 Senha123)
passwd maria -e
useradd joao -c "Joao Docker" -G GRP_ADM -m -s /bin/bash -p $(openssl passwd -6 Senha123)
passwd joao -e
useradd debora -c "Débora Pipeline" -G GRP_VEN -m -s /bin/bash -p $(openssl passwd -6 Senha123)
passwd debora -e
useradd sebastiana -c "Sebastiana Dev" -G GRP_VEN -m -s /bin/bash -p $(openssl passwd -6 Senha123)
passwd sebastiana -e
useradd roberto -c "Roberto Terraform" -G GRP_VEN -m -s /bin/bash -p $(openssl passwd -6 Senha123)
passwd roberto -e
useradd josefina -c "Josefina Firewall" -G GRP_SEC -m -s /bin/bash -p $(openssl passwd -6 Senha123)
passwd josefina -e
useradd amanda -c "Amanda Emtudo" -G GRP_SEC -m -s /bin/bash -p $(openssl passwd -6 Senha123)
passwd amanda -e
useradd rogerio -c "Rogério Secrets" -G GRP_SEC -m -s /bin/bash -p $(openssl passwd -6 Senha123)
passwd rogerio -e

#criação dos diretórios
mkdir /publico /adm /ven /sec

#permissionamento
chown root:root /publico
chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec
chmod 777 /publico
chmod 770 /adm
chmod 770 /ven
chmod 770 /sec

echo "Fim do script!"
