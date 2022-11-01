FROM wordpress:6.0.3-php7.4-apache
WORKDIR /var/www/html
COPY install_plugin_theme.sh ./
COPY php.ini ./
COPY botiga.1.2.1.zip ./
COPY woocommerce.7.0.0/woocommerce/sample-data/sample_products.xml ./
RUN curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
RUN chmod +x wp-cli.phar
RUN mv wp-cli.phar /usr/local/bin/wp
RUN wp cli update