FROM php:7.3.5-apache-stretch

RUN { \
    echo '<VirtualHost *:80>'; \
    echo '  DocumentRoot /var/www/html'; \
    echo '  <Directory /var/www/html>'; \
    echo '    AllowOverride All'; \
    echo '  </Directory>'; \
    echo '</VirtualHost>'; \
    } | tee "$APACHE_CONFDIR/conf-available/vhost.conf" \
    && a2enconf vhost && a2enmod rewrite

COPY ./wp-core /var/www/html/
COPY ./wp-theme /var/www/html/wp-content/themes/developing-theme
