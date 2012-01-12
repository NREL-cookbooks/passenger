maintainer       "Opscode, Inc."
maintainer_email "cookbooks@opscode.com"
license          "Apache 2.0"
description      "Installs and configures Passenger under Ruby Enterprise Edition with Apache"
long_description IO.read(File.join(File.dirname(__FILE__), 'README.rdoc'))
version          "0.99.3"

recipe "passenger", "Installs Passenger gem with Ruby Enterprise Edition"
recipe "passenger::apache2", "Enables Apache module configuration for passenger under Ruby Enterprise Edition"
recipe "passenger::nginx", "Installs Passenger gem w/ REE, and recompiles support into Nginx"

%w{ rvm nginx apache2 build-essential }.each do |cb|
  depends cb
end
