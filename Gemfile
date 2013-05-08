source 'https://rubygems.org'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
# NOTE (4/22/2013) : Previously used only 'actionpack', 'activesupport',
#    'railties' and 'bundler' instead of whole rails stack.
gem 'rails', '4.0.0.rc1'
ruby "2.0.0"

group :development, :test do
  gem 'sqlite3'
  gem 'rails-footnotes'

  gem 'rspec-rails'
  gem 'pry'

  gem "capybara"
  gem 'capybara-screenshot' 

  gem "email_spec"

  gem "autotest-rails"
  gem "autotest-fsevent"
  gem "autotest-growl"

  gem "cucumber-rails", :require => false, :git =>
    'https://github.com/cucumber/cucumber-rails.git', :branch => 'master_rails4_test'
  gem "database_cleaner", "1.0.0.RC1"

  gem "factory_girl_rails"
  gem "launchy"
  gem "letter_opener", :git => 'git://github.com/ryanb/letter_opener.git'

  gem 'rails4_upgrade', github: 'alindeman/rails4_upgrade'
  gem 'zonebie'

  gem 'simplecov', :require => false
  gem 'simplecov-json', :require => false
end

# Gems from  http://rubysource.com/boosting-your-rails-development-workflow
group :development do
  # For Guard
  gem 'guard'
  gem 'guard-livereload'
  gem 'rack-livereload'
  gem 'ruby_gntp' # Linux
  gem 'libnotify' if /linux/ =~ RUBY_PLATFORM
  gem 'growl' if /darwin/ =~ RUBY_PLATFORM
  gem 'rb-fsevent', :require => false # for Linux
  gem 'rb-inotify', :require => false # for OS X
  #gem 'rb-fchange', :require => false # for Windows

  gem "better_errors"
  gem "binding_of_caller"

  gem 'quiet_assets'

  gem 'awesome_print'
end

group :production do
  gem 'pg'
end

gem "slim"
gem 'omniauth'
gem 'omniauth-github'
gem 'octokit'
#U# gem 'high_voltage'
gem 'simple_form'
#U# gem 'unicorn'

# Gems used only for assets and not required
#    in production environments by default.
group :assets do
  gem 'coffee-rails'
  gem 'sass-rails', '~> 4.0.0.beta1'

  gem 'uglifier'

##  gem "therubyracer"
##  gem 'less-rails'
##  gem 'twitter-bootstrap-rails'
end

gem 'activerecord-deprecated_finders'

gem 'jquery-rails'

# Turbolinks makes following links in your web application faster. Read
#    more: https://github.com/rails/turbolinks
gem 'turbolinks'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder'

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
