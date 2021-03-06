maintainer       "Jakob Sack"
maintainer_email "jakob@owncloud.org"
license          "All rights reserved"
description      "Installs/Configures owncloud"
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          "0.1.0"

recipe            "owncloud", "prepares owncloud installation"
recipe            "owncloud::install", "installs owncloud"
recipe            "owncloud::database_sqlite", "installs owncloud sqlite support"
recipe            "owncloud::server_apache", "installs apache support"

%w{debian ubuntu}.each do |os|
  supports os
end

attribute "owncloud",
  :display_name => "Owncloud Hash",
  :description => "Hash of ownCloud attributes",
  :type => "hash"

attribute "owncloud/setup",
  :display_name => "Owncloud setup hash",
  :description => "Hash of ownCloud setup",
  :type => "hash"

attribute "owncloud/setup/branch",
  :display_name => "Owncloud branch",
  :description => "branch of ownCloud repo (only if source==github)",
  :default => "master"

attribute "owncloud/setup/webserver",
  :display_name => "Owncloud webserver",
  :description => "server serving ownCloud",
  :default => "apache2"

attribute "owncloud/setup/user_backend",
  :display_name => "Owncloud user backend",
  :description => "user backend",
  :default => "database"

attribute "owncloud/setup/group_backend",
  :display_name => "Owncloud group backend",
  :description => "group backend",
  :default => "database"

attribute "owncloud/setup/source",
  :display_name => "Owncloud source",
  :description => "Source of ownCloud files. 'local' or 'github'",
  :default => "github"

attribute "owncloud/config",
  :display_name => "Owncloud Hash",
  :description => "Hash of ownCloud configuration",
  :type => "hash"

attribute "owncloud/config/adminlogin",
  :display_name => "Owncloud admin login",
  :description => "name of admin",
  :default => "admin"

attribute "owncloud/config/adminpass",
  :display_name => "Admin password",
  :description => "Admin password",
  :default => "admin"

attribute "owncloud/config/directory",
  :display_name => "Owncloud directory",
  :description => "data directory",
  :default => "/var/www/data"

attribute "owncloud/config/loglevel",
  :display_name => "Owncloud log level",
  :description => "which log level should be used",
  :default => "0"

attribute "owncloud/config/dbtype",
  :display_name => "Owncloud dbtype",
  :description => "which database should be used",
  :default => "sqlite"

attribute "owncloud/config/dbname",
  :display_name => "Owncloud dbname",
  :description => "which database should be used",
  :default => "owncloud"

attribute "owncloud/config/dbuser",
  :display_name => "Owncloud dbuser",
  :description => "which database user should be used",
  :default => "owncloud"

attribute "owncloud/config/dbpass",
  :display_name => "Owncloud dbpassword",
  :description => "which database password should be used",
  :default => "owncloud"

attribute "owncloud/config/dbhost",
  :display_name => "Owncloud dbhost",
  :description => "which host should be used",
  :default => "localhost"

attribute "owncloud/config/dbtableprefix",
  :display_name => "Owncloud dbtableprefix",
  :description => "which database table prefix should be used",
  :default => "oc_"

attribute "owncloud/config/dbtablespace",
  :display_name => "Owncloud dbtablespace",
  :description => "Some Oracle database stuff I guess",
  :default => "oc_"
