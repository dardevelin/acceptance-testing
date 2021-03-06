default[:owncloud][:setup][:branch] = "master"
default[:owncloud][:setup][:webserver] = "apache2"
default[:owncloud][:setup][:user_backend] = "database"
default[:owncloud][:setup][:group_backend] = "database"
default[:owncloud][:setup][:source] = "github"
default[:owncloud][:config][:adminlogin] = "admin"
default[:owncloud][:config][:adminpass] = "admin"
default[:owncloud][:config][:directory] = "/var/www/data"
default[:owncloud][:config][:loglevel] = 0
default[:owncloud][:config][:dbtype] = "sqlite"
default[:owncloud][:config][:dbname] = "owncloud"
default[:owncloud][:config][:dbuser] = "owncloud"
default[:owncloud][:config][:dbpass] = "owncloud"
default[:owncloud][:config][:dbhost] = "localhost"
default[:owncloud][:config][:dbtableprefix] = "oc_"
default[:owncloud][:config][:dbtablespace] = "oc_"
