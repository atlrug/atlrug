source 'https://rubygems.org'

gem 'rails', '4.2.6'

ruby '2.3.0'

gem 'omniauth'
gem 'omniauth-github'
gem 'octokit'
gem 'coffee-rails'
gem 'sass-rails'
gem 'uglifier'
gem 'execjs'
gem 'therubyracer', platforms: :ruby
gem 'bootstrap-sass'
gem 'simple_form'
gem 'haml'
gem 'haml-rails'
gem 'jquery-rails'
gem 'overcommit'

# Turbolinks makes following links in your web application faster. Read
#    more: https://github.com/rails/turbolinks
gem 'turbolinks'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder'

# APP-specific gems
gem 'rest-client', '2.0.0.rc2'
gem 'hassle3'
gem 'kgio'
gem 'tzinfo'
gem 'unicorn'
gem 'backports'
gem 'memcachier'
gem 'dalli'
gem 'yt'

# For old-style action_caching
gem 'actionpack-action_caching'

# Gems from  http://rubysource.com/boosting-your-rails-development-workflow
group :development do
  gem 'better_errors'
  gem 'binding_of_caller'
  gem 'awesome_print'
  gem 'quiet_assets'

  gem 'dawnscanner', require: false

  gem 'rubycritic', require: false

  # For Guard
  gem 'guard'
  gem 'guard-livereload'
  gem 'rack-livereload'
  gem 'ruby_gntp' # Linux
  gem 'rb-fsevent', require: false # for Linux
  gem 'rb-inotify', require: false # for OS X
  # gem 'rb-fchange', require: false # for Windows
end

group :development, :test do
  gem 'sqlite3'

  # TESTING/ANALYSIS
  gem 'rails-footnotes'

  gem 'rspec-rails'
  gem 'email_spec'

  gem 'capybara'
  gem 'capybara-screenshot'

  gem 'autotest-rails'
  gem 'autotest-fsevent'
  gem 'autotest-growl'

  gem 'cucumber'
  gem 'cucumber-rails', require: false
  gem 'database_cleaner'

  gem 'factory_girl_rails'
  gem 'launchy'
  gem 'letter_opener'
  gem 'zonebie'

  gem 'rails4_upgrade'

  gem 'travis'

  gem 'simplecov', require: false
  gem 'simplecov-json', require: false

  # This loads environment variables from rails_root/.env if that file exists.
  gem 'dotenv-rails'
end

group :production do
  gem 'pg'
  gem 'rails_12factor'
end
