module Cacheable
  extend ActiveSupport::Concern
  included do
    def self.memcached(key)
      # MEMCACHED.flush if params[:flush_cache]
      if Object.const_defined? :MEMCACHED
        cache_key = Digest::MD5.hexdigest("#{key}-#{Rails.env}")
        MEMCACHED.fetch(cache_key, 1.hour) do
          yield
        end
      else
        yield
      end
    end
  end
end
