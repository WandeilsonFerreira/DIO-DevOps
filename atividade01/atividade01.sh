#!/bin/bash

echo "Excluir diretórios, arquivos, grupos e usuários criados anteriormente"
rm -r -f publico vem ven sec 
userdel GRP_ADM
userdel GRP_VEN
userdel GRP_SEC

echo "Criando os diretórios"
mkdir -v publico adm ven sec

echo "Criando os grupos de trabalho"
groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando os usuários e adicionando aos respectivos grupos"
useradd carlos -m -c "Carlos | GRP_ADM" -s /bin/bash -p $(openssl passwd senha123) -G GRP_ADM
passwd -e
useradd maria -m -c "Maria | GRP_ADM" -s /bin/bash -p $(openssl passwd senha123) -G GRP_ADM
passwd -e
useradd joao -m -c "João | GRP_ADM" -s /bin/bash -p $(openssl passwd senha123) -G GRP_ADM
passwd -e

useradd debora -m -c "Debora | GRP_VEN" -s /bin/bash -p $(openssl passwd senha123) -G GRP_VEN
passwd -e
useradd sebastiana -m -c "Sebastiana | GRP_VEN" -s /bin/bash -p $(openssl passwd senha123) -G GRP_VEN
passwd -e
useradd roberto -m -c "Roberto | GRP_VEN" -s /bin/bash -p $(openssl passwd senha123) -G GRP_VEN
passwd -e

useradd josefina -m -c "Josefina | GRP_SEC" -s /bin/bash -p $(openssl passwd senha123) -G GRP_SEC
passwd -e
useradd amanda -m -c "Amanda | GRP_SEC -s /bin/bash -p $(openssl passwd senha123) -G GRP_SEC
passwd -e
useradd rogerio -m -c "Rogério | GRP_SEC" -s /bin/bash -p $(openssl passwd senha123) -G GRP_SEC
passwd -e

echo "Gerenciando permissões"
chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico
