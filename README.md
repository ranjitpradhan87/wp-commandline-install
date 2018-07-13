# wp-commandline-install
You can install Wordpress using command prompt and save your time.


Step 1 – Installing WP-CLI

curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar

Confirm that it has downloaded successfully with this command

php wp-cli.phar --info

Step 2 – 

To finalize the installation, move WP-CLI into its final location:

sudo mv wp-cli.phar /usr/local/bin/wp


After this, you have to store the wordpress.sh file in you system and run this code.

And follow the steps as it is asking your info.

Please change your credential before using the the script

# Database information
DB_HOST="YOUR DATABASE HOST"

# Project path as your system configuration
PROJ_PATH="Path to your project"/$projectName
Ex:- "/var/www/html/Foldername/$projectName"

# Project url as your system configuration
PROJ_URL="URL to your project"/$projectName
Ex:- "http://localhost/Foldername/$projectName"

Thank you !