#!/bin/bash
# Script: deployzada.sh
# Autor: Carlos Henrique Tourinho Santana
# Descrição: Sincronize qualquer tipo de conteúdo entre sua máquina local e um servidor remoto com rsync + SSH, de forma segura, automática e profissional. Feito com o jeitinho brasileiro.
# GitHub: https://github.com/henriquetourinho/deployzada

# ========== CONFIGURAÇÕES ==========
# ⚠️ Substitua os valores abaixo com suas informações reais antes de usar.

LOCAL_DIR="/caminho/para/seu/diretorio/local"
REMOTE_USER="usuario_remoto"
REMOTE_IP="000.000.000.000"
REMOTE_DIR="/caminho/no/servidor/remoto"
PEM_KEY="/caminho/para/sua/chave.pem"

# ===================================

# Verifica se rsync está instalado no remoto
echo "🧪 Verificando se rsync está instalado no remoto..."
ssh -i "$PEM_KEY" -o StrictHostKeyChecking=no ${REMOTE_USER}@${REMOTE_IP} "command -v rsync" >/dev/null 2>&1
if [ $? -ne 0 ]; then
    echo "⚠️ rsync não encontrado. Instalando no servidor remoto..."
    ssh -i "$PEM_KEY" -o StrictHostKeyChecking=no ${REMOTE_USER}@${REMOTE_IP} "sudo apt update && sudo apt install rsync -y"
fi

# Cria diretório remoto e ajusta permissões
echo "🛠️ Verificando/criando diretório remoto..."
ssh -i "$PEM_KEY" -o StrictHostKeyChecking=no ${REMOTE_USER}@${REMOTE_IP} \
"sudo mkdir -p ${REMOTE_DIR} && sudo chown ${REMOTE_USER}:${REMOTE_USER} ${REMOTE_DIR} && sudo chmod 755 ${REMOTE_DIR}"

# Verifica se o diretório local existe
if [ ! -d "$LOCAL_DIR" ]; then
    echo "❌ Diretório local não encontrado: $LOCAL_DIR"
    exit 1
fi

# Inicia sincronização
echo "📤 Iniciando sincronização dos arquivos para o servidor remoto..."
rsync -avz -e "ssh -i $PEM_KEY -o StrictHostKeyChecking=no" "$LOCAL_DIR" "${REMOTE_USER}@${REMOTE_IP}:${REMOTE_DIR}"

# Resultado final
if [ $? -eq 0 ]; then
    echo "✅ Sincronização concluída com sucesso!"
else
    echo "❌ Erro durante a sincronização. Verifique conexão, chave ou permissões."
fi
