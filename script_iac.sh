#!/bin/bash

echo "Criando pastas no sistema..."
echo "Criando pasta /publico"
mkdir /publico/
chmod 777 /publico/
echo "Criando pasta /adm"
mkdir /adm/
chmod 770 /adm/
echo "Criando pasta /ven"
mkdir /ven/
chmod 770 /ven/
echo "Criando pasta /sec"
mkdir /sec/
chmod 770 /sec/
echo "Criação das pastas finalizadas..."

echo "Criando usuários do grupo ADM..."
groupadd GRP_ADM
chown root:GRP_ADM /adm/
useradd carlos -c "Carlos" -s /bin/bash -m -p $(openssl passwd -crypt Senha123) -G GRP_ADM
chage -d 0 carlos
useradd maria -c "Maria" -s /bin/bash -m -p $(openssl passwd -crypt Senha123) -G GRP_ADM
chage -d 0 maria
useradd joao -c "Joao" -s /bin/bash -m -p $(openssl passwd -crypt Senha123) -G GRP_ADM
chage -d 0 joao

echo "Criando usuários do Grupo VEN..."
groupadd GRP_VEN
chown root:GRP_VEN /ven/
useradd debora -c "Debora" -s /bin/bash -m -p $(openssl passwd -crypt Senha123) -G GRP_VEN
chage -d 0 debora
useradd sebastiana -c "Sebastiana" -s /bin/bash -m -p $(openssl passwd -crypt Senha123) -G GRP_VEN
chage -d 0 debora
useradd roberto -c "Roberto" -s /bin/bash -m -p $(openssl passwd -crypt Senha123) -G GRP_VEN
chage -d 0 roberto

echo "Criando usuários do Grupo SEC..."
groupadd GRP_SEC
chown root:GRP_SEC /sec/
useradd josefina -c "Josefina" -s /bin/bash -m -p $(openssl passwd -crypt Senha123) -G GRP_SEC
chage -d 0 josefina
useradd amanda -c "Amanda" -s /bin/bash -m -p $(openssl passwd -crypt Senha123) -G GRP_SEC
chage -d 0 amanda
useradd rogerio -c "Rogerio" -s /bin/bash -m -p $(openssl passwd -crypt Senha123) -G GRP_SEC
chage -d 0 rogerio