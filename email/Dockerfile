FROM ubuntu:22.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt update && apt install -y \
    postfix dovecot-core dovecot-imapd dovecot-pop3d dovecot-lmtpd \
    apache2 php php-mysql php-intl php-mbstring php-xml php-common php-curl \
    mariadb-server roundcube roundcube-core roundcube-mysql roundcube-plugins \
    supervisor nano openssl

# Copia as configurações da pasta local para o container
COPY config/ /etc/

# Copia o script de inicialização
COPY start.sh /start.sh
RUN chmod +x /start.sh

# Libera as portas de e-mail, IMAP e webmail
EXPOSE 25 587 993 80

CMD ["/start.sh"]
