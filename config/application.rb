require File.expand_path('../boot', __FILE__)

require 'rails/all'
#U# # require 'rails/all'
#U# require "action_controller/railtie"
#U# # require "action_mailer/railtie"
#U# # require "active_resource/railtie"
#U# require "rails/test_unit/railtie"

# Assets should be precompiled for production (so we don't need the gems loaded then)
Bundler.require(*Rails.groups(assets: %w(development test)))

#U# # If you have a Gemfile, require the gems listed there, including any gems
#U# # you've limited to :test, :development, or :production.
#U# Bundler.require(:default, Rails.env) if defined?(Bundler)

module Atlrug4
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.

    # Set Time.zone default to the specified zone and make Active Record auto-convert to this zone.
    # Run "rake -D time" for a list of tasks for finding time zone names. Default is UTC.
    # config.time_zone = 'Central Time (US & Canada)'

    # The default locale is :en and all translations from config/locales/*.rb,yml are auto loaded.
    # config.i18n.load_path += Dir[Rails.root.join('my', 'locales', '*.{rb,yml}').to_s]
    # config.i18n.default_locale = :de

    # Custom directories with classes and modules you want to be autoloadable.
    config.autoload_paths += %W(#{config.root}/lib)

    config.assets.initialize_on_precompile = false

#U#     # Only load the plugins named here, in the order given (default is alphabetical).
#U#     # :all can be used as a placeholder for all plugins not explicitly named.
#U#     # config.plugins = [ :exception_notification, :ssl_requirement, :all ]
#U# 
#U#     # Activate observers that should always be running.
#U#     # config.active_record.observers = :cacher, :garbage_collector, :forum_observer
#U# 
#U#     # JavaScript files you want as :defaults (application.js is always included).
#U#     # config.action_view.javascript_expansions[:defaults] = %w(jquery rails)
#U# 
#U#     # Configure the default encoding used in templates for Ruby 1.9.
#U#     config.encoding = "utf-8"
#U# 
#U#     # Configure sensitive parameters which will be filtered from the log file.
#U#     config.filter_parameters += [:password]

  end
end
