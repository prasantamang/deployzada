# Deployzada 🚀🇧🇷

**Deployzada** é um script profissional em Bash para **sincronizar qualquer tipo de conteúdo** entre sua máquina local e um servidor remoto com segurança, automação e aquele toque brasileiro.

Você pode usá-lo para sincronizar:
- Sites, dashboards e painéis
- Backups, bancos de dados, imagens, documentos
- Projetos de código, arquivos de produção, e muito mais!

---

## 📦 O que o Deployzada faz

- 🔍 Verifica se o `rsync` está instalado no servidor remoto e instala se necessário
- 🛠️ Cria o diretório remoto e ajusta permissões automaticamente
- 🔐 Usa conexão segura via SSH com chave `.pem` (ou outra configuração SSH)
- 📤 Sincroniza conteúdo usando `rsync` com compressão e verificação
- 📜 Exibe logs limpos, informativos e amigáveis

---

## 🚀 Por que usamos o `rsync`?

O `rsync` é um protocolo de sincronização poderoso e eficiente, que:

- Só transfere o que mudou (diferenças entre arquivos), economizando banda
- Suporta compressão, verificação de integridade e permissões
- É rápido, seguro e ideal para automações com SSH

É a escolha perfeita para **deploys inteligentes** e **backups automatizados**.

---

## ⚙️ Requisitos

- Linux com terminal Bash
- `rsync` instalado localmente
- Acesso SSH ao servidor remoto
- Chave `.pem` (ou configuração SSH equivalente)



## 🛠️ Como configurar

Edite o arquivo `deployzada.sh` e preencha com suas informações:

```bash
LOCAL_DIR="/caminho/para/seu/diretorio/local"
REMOTE_USER="usuario_remoto"
REMOTE_IP="000.000.000.000"
REMOTE_DIR="/caminho/no/servidor/remoto"
PEM_KEY="/caminho/para/sua/chave.pem"
