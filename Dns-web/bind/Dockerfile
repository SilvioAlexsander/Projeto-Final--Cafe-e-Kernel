# Base da imagem
# Usa uma imagem base do Debian (leve e confiável)
FROM debian:bullseye

# Define o mantenedor da imagem
LABEL maintainer="cafeekernel@ifrn.com"

# Atualiza os pacotes e instala o Bind9 e utilitários úteis
RUN apt-get update && \
    apt-get install -y bind9 dnsutils && \
    rm -rf /var/lib/apt/lists/*

# Cria diretórios usados pelo BIND
RUN mkdir -p /etc/bind /var/cache/bind /var/log/bind /var/run/named

# Copia os arquivos de configuração locais para dentro da imagem
COPY named.conf /etc/bind/named.conf
COPY named.conf.local /etc/bind/named.conf.local
COPY db.site.local /etc/bind/db.site.local

# Expõe a porta padrão do DNS (53 TCP e UDP)
EXPOSE 53/udp
EXPOSE 53/tcp

# Comando padrão para iniciar o BIND em primeiro plano
CMD ["named", "-f", "-g"]
