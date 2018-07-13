#! /bin/bash

clear
echo "Hello, who am I talking to ?"

read username

# Ask for install wordpress
echo "It's nice to meet you $username, So ready for install WordPress ?[Y,n]"

read input 

# if yes do the installation

if [[ $input == "Y" || $input == "y" ]]; then
echo "Provide your Project name"

read projectName

mkdir -p /var/www/html/Magingeeks/$projectName

echo "Please give your database User name"

read dbuser

echo "Please give your database Password"

read dbpass

# Database information
DB_USER=$dbuser
DB_PASS=$dbpass
DB_HOST="localhost"

# Project path as your system configuration
PROJ_PATH="/var/www/html/Foldername/$projectName"

# Project url as your system configuration
PROJ_URL="http://localhost/Foldername/$projectName"

echo "Thank you! can you give your database name"

read dbName

# Create the database.
echo "Creating database $dbName..."

mysql -u$DB_USER -p$DB_PASS -e"CREATE DATABASE $dbName"

# Download WP Core.
wp core download --path=$PROJ_PATH

# Generate the wp-config.php file
wp core config --path=$PROJ_PATH --dbname=$dbName --dbuser=$DB_USER --dbpass=$DB_PASS --extra-php <<PHP
define('WP_DEBUG', true);
define('WP_DEBUG_LOG', true);
define('WP_DEBUG_DISPLAY', true);
define('WP_MEMORY_LIMIT', '256M');
PHP

echo "Please provide your Project Title"

read projTitle

echo "Please provide your Admin name"

read projAdmin


echo "Please provide your Admin password"

read projPassword

# Install the WordPress database.
wp core install --path=$PROJ_PATH --url=$PROJ_URL --title=$projTitle --admin_user=$projAdmin --admin_password=$projPassword --admin_email=ranjit.pradhan@magnigeeks.com

echo "Please visit your wordpress site $PROJ_URL"

else
	echo "Thank you ! We will do next time. bye..."
fi
