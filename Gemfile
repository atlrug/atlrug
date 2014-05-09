source 'https://rubygems.org'

gem 'rails', '4.1.1'
ruby "2.1.2"

# Follow this thread http://stackoverflow.com/questions/22391116/nomethoderror-in-pageshome-undefined-method-environment-for-nilnilclass
gem 'sprockets', '2.11.0'

group :development, :test do
  gem 'sqlite3'

  #TESTING/ANALYSIS
  gem 'rails-footnotes'

  gem 'rspec-rails', '3.0.0.beta1'
  gem "email_spec"

  gem "capybara"
  gem 'capybara-screenshot'

  gem "autotest-rails"
  gem "autotest-fsevent"
  gem "autotest-growl"

  gem "cucumber-rails", :require => false
  gem "database_cleaner"

  gem "factory_girl_rails"
  gem "launchy"
  gem "letter_opener"
  gem 'zonebie'

  gem 'rails4_upgrade'

  gem 'travis'

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

  gem 'codesake-dawn', :require => false

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
  gem 'rails_12factor'
end

gem 'omniauth'
gem 'omniauth-github'
gem 'octokit'

gem 'coffee-rails'
gem 'sass-rails'
gem 'uglifier'

gem 'execjs'
gem 'therubyracer', :platforms => :ruby

gem "bootstrap-sass-rails"
gem 'simple_form'
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

gem 'memcachier'
gem 'dalli'

gem 'youtube_it'

######################################################################
# 4/24/2013: The following was created by "rails new" command.
# To use ActiveModel has_secure_password
# gem 'bcrypt-ruby'
#
# Use unicorn as the app server
# gem 'unicorn'
#
# Deploy with Capistrano
# gem 'capistrano', group: :development
#
# To use debugger
# gem 'debugger'
