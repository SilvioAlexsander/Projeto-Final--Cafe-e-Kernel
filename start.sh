#!/bin/bash
#O script agora espera o banco estar no ar antes de importar os dados e iniciar os serviços.
# Aguardar o banco ficar pronto
echo "⏳ Aguardando o banco MariaDB ficar pronto..."
until mysql -h"$DB_HOST" -u"$DB_USER" -p"$DB_PASS" -e ""; do
  sleep 2
done

# Importar estrutura inicial do Roundcube
echo "🚀 Inicializando banco de dados Roundcube..."
mysql -h"$DB_HOST" -u"$DB_USER" -p"$DB_PASS" $MYSQL_DATABASE < /usr/share/roundcube/SQL/mysql.initial.sql

# Iniciar serviços
echo "📬 Iniciando serviços de e-mail e webmail..."
service postfix start
service dovecot start
service apache2 start

# Manter container rodando
tail -f /dev/null