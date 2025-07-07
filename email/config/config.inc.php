# Roundcube Webmai - Aqui a senha do banco é: senhaSegura. Podemos mudar #depois, se quiser.
<?php
$config['db_dsnw'] = 'mysql://roundcube:senhaSegura@dbmail/roundcube';
$config['default_host'] = 'ssl://localhost';
$config['default_port'] = 993;
$config['smtp_server'] = 'tls://localhost';
$config['smtp_port'] = 587;
$config['smtp_user'] = '%u';
$config['smtp_pass'] = '%p';
$config['plugins'] = ['archive', 'zipdownload', 'managesieve'];
$config['skin'] = 'elastic';
?>
