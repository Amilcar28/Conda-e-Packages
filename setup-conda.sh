#!/bin/bash
# ============================================================
# Script: setup-conda.sh
# Autor: Amílcar José
# Descrição: Instalação de pacotes e ferramentas úteis para
# ambientes de trabalho em Linux e Conda.
# ============================================================

echo "============================================"
echo "🚀 Iniciando configuração do ambiente Conda"
echo "============================================"

# Atualiza o sistema e instala ferramentas básicas
sudo apt update && sudo apt install -y htop

# Executa htop (opcional)
htop

# Instala o Anaconda (ajuste o nome do instalador, se necessário)
cd ~/Downloads
ls
bash Anaconda3-2025.06-0-Linux-x86_64.sh

# Cria e ativa o ambiente Conda
conda --version
conda create -n amilcar python=3.10 -y
conda activate amilcar

# Instala o gerenciador uv (alternativa ao pip)
pip install uv

# Instala bibliotecas essenciais para análise geoespacial e científica
uv pip install pyproj rioxarray geopandas xarray tqdm haversine earthaccess seaborn pyarrow fastparquet scipy

# Instala bibliotecas adicionais via conda-forge
conda install -c conda-forge gdal=3.10 rasterio libgdal-hdf4 -y

# Instala aprendizado de máquina e séries temporais
uv pip install -U scikit-learn
uv pip install sktime

# Instala o Visual Studio Code (ajuste o nome do arquivo se necessário)
sudo dpkg -i code_1.105.0-1759933565_amd64.deb

# Limpa o terminal e abre o VS Code
clear
code .

# Reforça atualizações e instala QGIS
sudo apt update
sudo apt install -y qgis

# Finaliza
clear
echo "✅ Configuração concluída com sucesso!"
qgis

