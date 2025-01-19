# Conteúdo MLOPS

Atualização do Material de MLOps para o ano 2025.

Python version: 3.10.

# Preparação do ambiente

Este projeto foi preparado para ser executado em Python 3.10.

O ambiente pode ser criado com o gerenciador de sua preferência. 

## Via conda environment manager
Após ter o conda instalado, execute:
```shell
conda env create -f environment.yml
```
Para verificar os ambientes criados e disponíveis:
```commandline
conda env list
```

Documentação de referência: https://docs.conda.io/projects/conda/en/latest/user-guide/tasks/manage-environments.html 

## Via outros gerenciadores de ambiente
Após ter a versão do Python devidamente instalada, execute:
```shell
pip install -r requirements.txt
```

## Dependências Azure Machine Learning
Se o você for integrar cin a área de trabalho Azure Macbine Learning, instale também as dependências da Azure:
```shell
pip install -r requirements_azure.txt
```