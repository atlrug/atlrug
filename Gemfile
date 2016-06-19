source 'https://rubygems.org'

gem 'rails',       '5.0.0.rc1' # RAILS5
gem 'turbolinks',  github: 'rails/turbolinks' # RAILS5
gem "omniauth",    github: 'twalpole/omniauth', branch: 'rack_master' # RAILS5

ruby '2.3.1'

gem 'omniauth-github'
gem 'octokit'
gem 'coffee-rails'
gem 'sass-rails'
gem 'uglifier'
gem 'execjs'
gem 'therubyracer', platforms: :ruby
gem 'bootstrap-sass'
gem 'haml'
gem 'haml-rails'
gem 'jquery-rails'
gem 'overcommit'
gem 'simple_form'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder'

# APP-specific gems
gem 'rest-client', '2.0.0.rc4' # LOCKED DOWN
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
  gem 'rspec-rails', '3.5.0.beta4' #RAILS5
  gem 'rails-footnotes'
  gem 'capybara'
  gem 'capybara-screenshot'
  gem 'email_spec'
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
