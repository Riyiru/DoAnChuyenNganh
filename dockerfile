FROM wordpress:6.0.3-php7.4-apache
WORKDIR /var/www/html
COPY ./install_plugin_theme.sh /var/www/html/
COPY ./php.ini /var/www/html/
COPY ./botiga.1.2.1.zip /var/www/html
COPY ./woocommerce.7.0.0/woocommerce/sample-data/sample_products.xml /var/www/html
RUN curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
RUN chmod +x wp-cli.phar
RUN mv wp-cli.phar /usr/local/bin/wp
RUN wp cli update