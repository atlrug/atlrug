source 'https://rubygems.org'
ruby "2.0.0"

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
# NOTE (4/22/2013) : Previously used only 'actionpack', 'activesupport',
#    'railties' and 'bundler' instead of whole rails stack.
gem 'rails', '4.0.0.beta1'

group :development, :test do
  gem 'sqlite3'
end

group :production do
  gem 'pg'
end

# Gems used only for assets and not required
#    in production environments by default.
group :assets do

  # NOTE: Removed sass and compass.

  gem 'coffee-rails', '~> 4.0.0.beta1'
  gem 'sass-rails', '~> 4.0.0.beta1'

  # See https://github.com/sstephenson/execjs#readme for more
  #    supported runtimes
  # gem 'therubyracer', platforms: :ruby

  gem 'uglifier', '>= 1.0.3'
end

gem 'activerecord-deprecated_finders'

gem 'jquery-rails'

# Turbolinks makes following links in your web application faster. Read
#    more: https://github.com/rails/turbolinks
gem 'turbolinks'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 1.0.1'

# APP-specific gems
 
gem 'rest-client'
gem 'haml'
gem 'hassle3' 
gem 'kgio'
gem 'dalli'
gem 'tzinfo'
gem 'thin'

######################################################################
# 4/24/2013: The following was created by "rails new" command.
# To use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'
#
# Use unicorn as the app server
# gem 'unicorn'
#
# Deploy with Capistrano
# gem 'capistrano', group: :development
#
# To use debugger
# gem 'debugger'
