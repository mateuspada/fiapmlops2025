#!/bin/bash

# Para executar:
# chmod +x setupconainers.sh
# ./setupconainers.sh


# Criação da rede Docker
echo "Criando a rede Docker..."
sudo docker network create plat_network || echo "Rede 'plat_network' já existe."

# Inicialização do container serving01
echo "Iniciando o container 'serving01'..."
sudo docker run -d --network plat_network --restart always -v $(pwd)/models:/myServer/models --name serving01 platserver python servingmodel.py models/modelo01.joblib

# Inicialização do container serving02
echo "Iniciando o container 'serving02'..."
sudo docker run -d --network plat_network --restart always -v $(pwd)/models:/myServer/models --name serving02 platserver python servingmodel.py models/modelo02.joblib

# Inicialização do container modelmanager
echo "Iniciando o container 'modelmanager'..."
sudo docker run -d --network plat_network -p 443:8080 --restart always -v $(pwd)/config:/myServer/config -v $(pwd)/Log:/myServer/Log --name modelmanager platserver python modelmanager.py

# Esperar 5 segundos antes de listar os containers
echo "Aguardando 5 segundos para verificar os containers..."
sleep 5

# Listar os containers em execução
echo "Listando os containers em execução:"
sudo docker ps