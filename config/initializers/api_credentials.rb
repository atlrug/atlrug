# WAS: unless (Rails.env == 'production') || File.exists?("#{Rails.root}/config/api_keys.yml")
unless (Rails.env == 'production') || ENV['MEETUP_KEY']
  #raise "Copy config/api_keys.yml.sample to config/api_keys.yml and edit with your api key(s). :)"
  abort "Please define ENV['MEETUP_KEY'] before continuing."
end

unless (Rails.env == 'production') || ENV['AR4_S_K_B']
  abort "Please define ENV['AR4_S_K_B'] (Secret Key Base variable) before continuing."
end

class ApiCredentials
  cattr_accessor :all_keys
  def self.keys
    self.all_keys = ENV['MEETUP_KEY']
    # WAS: YAML::load(IO.read("#{Rails.root}/config/api_keys.yml"))
  end

  def self.key(service)
    return ENV[service] if ENV[service]
    keys[service]
  end
end
