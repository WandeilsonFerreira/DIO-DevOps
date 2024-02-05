# DIO-DevOps
## Infraestrutura como código: Script de provisionamento de um servidor web (apache) 

### Objetivo da atividade
Desenvolver um script que gerencia um servidor apache local

#### Definições
- Criar um snapshot no virtualbox;
- Atualizar o servidor;
- Instalar o apache2;
- Instalar o unzip;
- Baixar a aplicação disponível no endereço https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip no diretório /tmp;
- Copiar os arquivos da aplicação no diretório padrão do apache;
- Subir arquivo de script para um repositório no GitHub.

### Desenvolvimento
```
#!/bin/bash

echo "Atualizando o sistema"

apt-get updade && upgrade -y
apt-get install apache2 -y
apt-get install unzip -y

echo "Baixando, descompactando e organizando arquivos do projeto"
cd /tmp

wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip

cd linux-site-dio-main

cp -R * /var/www/html

```
