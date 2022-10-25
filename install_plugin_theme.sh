#!bin/bash
wp import sample_products.xml --authors=create
wp plugin install woocommerce --allow-root
wp plugin activate woocommerce --allow-root
wp theme install botiga.1.2.1.zip --allow-root
wp theme activate botiga --allow-root