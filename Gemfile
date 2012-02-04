source 'https://rubygems.org'

gem 'rails', '3.2.1'

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'

if defined?(JRUBY_VERSION)
  gem 'activerecord-jdbc-adapter'
  gem 'activerecord-jdbcmysql-adapter'
  gem 'jdbc-mysql'
  gem 'jruby-openssl'
  gem 'jruby-rack'
  gem 'warbler' 
  gem 'trinidad'
else
  gem 'mysql2'
end

gem 'devise'
gem 'cancan'
gem 'rolify'
gem 'json'
gem 'netzke-core', :git => "git://github.com/skozlov/netzke-core.git"
gem 'netzke-basepack', :git => "git://github.com/skozlov/netzke-basepack.git"
gem 'will_paginate'

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'

  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  gem 'therubyrhino'

  gem 'uglifier', '>= 1.0.3'
end

gem 'jquery-rails'

# To use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# To use Jbuilder templates for JSON
# gem 'jbuilder'

# Use unicorn as the web server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
# gem 'ruby-debug'
