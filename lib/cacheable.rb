#U# module Cacheable
#U#   extend ActiveSupport::Concern
#U#   included do
#U#     def self.memcached(key)
#U#       # MEMCACHED.flush if params[:flush_cache]
#U#       if Object.const_defined? :MEMCACHED
#U#         cache_key = Digest::MD5.hexdigest("#{key}-#{Rails.env}")
#U#         MEMCACHED.fetch(cache_key, 1.hour) do
#U#           yield
#U#         end
#U#       else
#U#         yield
#U#       end
#U#     end
#U#   end
#U# 
#U# end
