module Cacheable
  extend ActiveSupport::Concern
  included do
    def self.memcached(key)
        cache_key = Digest::MD5.hexdigest("#{key}-#{Rails.env}")
        yield
    end
  end
end
