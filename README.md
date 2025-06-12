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

---

## 🛠️ Como configurar

Edite o arquivo `deployzada.sh` e preencha com suas informações:

```bash
LOCAL_DIR="/caminho/para/seu/diretorio/local"
REMOTE_USER="usuario_remoto"
REMOTE_IP="000.000.000.000"
REMOTE_DIR="/caminho/no/servidor/remoto"
PEM_KEY="/caminho/para/sua/chave.pem"

---

## 👤 Autor

**Carlos Henrique Tourinho Santana**
Desenvolvedor Backend, DevOps e Integrador de Sistemas embarcados, com sólida experiência em **automação com Shell Script, Python, C e C++**. Atua no desenvolvimento de soluções para **ESP32, Arduino e módulos GSM**, além de sistemas web com **PHP**.

Especialista em **bots para Telegram**, **monitoramento de servidores Linux**, automação de tarefas críticas e criação de ferramentas inteligentes para segurança e produtividade.

Criador do projeto **To Bem Informado**, que entrega mensagens diárias com carinho, inteligência e presença digital.

📍 *Salvador, Bahia – Brasil*
📫 Telegram: [@henriquetourinho](https://t.me/henriquetourinho)
🌐 Site: [henriquetourinho.com](https://henriquetourinho.com)
📧 E-mail: [henriquetourinho@riseup.net](mailto:henriquetourinho@riseup.net)
🐦 Twitter/X: [x.com/ryckybrasil](https://x.com/ryckybrasil)
📸 Instagram: [@henriquetourinhooficial](https://www.instagram.com/henriquetourinhooficial)

---


## 📄 Licença

Distribuído sob a licença MIT.
© 2025 Carlos Henrique Tourinho Santana.