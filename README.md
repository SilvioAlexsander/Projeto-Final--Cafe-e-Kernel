# Projeto-Final---Cafe e Kernel



### 📁 **Estrutura do Servidor**

```
infra/
├── docker-compose.yml
├── .env
├── haproxy/
│   ├── haproxy.cfg
│   └── certs/
│       └── seu-dominio.com.pem
├── mail/
│   ├── Dockerfile
│   └── config/
│       ├── postfix/
│       └── dovecot/
├── webmail/
│   └── Dockerfile
├── dns/
│   ├── Dockerfile
│   └── named.conf
├── portal/
│   ├── Dockerfile
│   └── app/
│       └── index.html
├── github-actions/
│   └── deploy.yml
