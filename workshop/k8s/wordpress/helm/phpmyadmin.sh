# printenv | grep PASSWORD 
# to get WORDPRESS_DATABASE_PASSWORD for connect database
helm install my-phpmyadmin stable/phpmyadmin --set db.host=my-wordpress-mariadb