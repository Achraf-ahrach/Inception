
wp --allow-root core download

wp config create --dbname="$MYSQL_DATABASE" --dbuser="$MYSQL_USER" --dbpass="$MYSQL_PASSWORD" --dbhost="mariadb" --path="/var/www/html" --skip-check --allow-root

wp core install --url="https://aahrach.42.fr" --title="$TITLE" --admin_name=$ADMIN_NAME --admin_password=$ADMIN_PASSWORD --admin_email=$ADMIN_EMAIL

wp user create  $WORDPRESS_USER $WORDPRESS_USER_EMAIL --role=author --user_pass=$WORDPRESS_USER_PASSWORD --path="/var/www/html" --allow-root

mkdir -p "/run/php/"

php-fpm8.3 -F