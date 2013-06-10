source 'https://rubygems.org'

gem 'rails', '4.0.0.rc1'
ruby "2.0.0"

group :development, :test do
  gem 'sqlite3'

  #TESTING/ANALYSIS
  gem 'rails-footnotes'

  gem 'rspec-rails'
  gem "email_spec"

  gem "capybara"
  gem 'capybara-screenshot'

  gem "autotest-rails"
  gem "autotest-fsevent"
  gem "autotest-growl"

  gem "cucumber-rails", :require => false, :git =>
    'https://github.com/cucumber/cucumber-rails.git', :branch => 'master_rails4_test'
  gem "database_cleaner"

  gem "factory_girl_rails"
  gem "launchy"
  gem "letter_opener", :git => 'git://github.com/ryanb/letter_opener.git'
  gem 'zonebie'

  gem 'rails4_upgrade', :git => 'git://github.com/alindeman/rails4_upgrade'

  #U# gem 'travis'

  gem 'simplecov', :require => false
  gem 'simplecov-json', :require => false

  # This loads environment variables from rails_root/.env if that file exists.
  gem 'dotenv-rails'
end

# Gems from  http://rubysource.com/boosting-your-rails-development-workflow
group :development do
  gem "better_errors"
  gem "binding_of_caller"
  gem 'awesome_print'
  gem 'quiet_assets'

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
end

group :production do
  gem 'pg'
end

gem 'omniauth'
gem 'omniauth-github'
gem 'octokit'

gem 'coffee-rails'
gem 'sass-rails', '~> 4.0.0.beta1'
gem 'uglifier'

gem 'execjs'
#U# (5/2/2013: STUCK AT 3.11.8.17 x86-linux) gem 'libv8', '~> 3.3.10', :platforms => :ruby
gem 'therubyracer', :platforms => :ruby

gem "compass-rails"
gem "bootstrap-sass-rails"
gem 'simple_form', :git => 'git://github.com/plataformatec/simple_form.git'
gem 'haml'
gem "haml-rails"

gem 'jquery-rails'

# Turbolinks makes following links in your web application faster. Read
#    more: https://github.com/rails/turbolinks
gem 'turbolinks'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder'

# APP-specific gems
gem 'rest-client'
gem 'hassle3'
gem 'kgio'
gem 'tzinfo'
gem 'unicorn'
gem 'backports'

# For old-style action_caching
gem "actionpack-action_caching"

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
