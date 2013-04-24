require 'rest_client'
require 'cacheable'

class BlipVideo
  include Cacheable

  def self.all
    return []

    result = memcached('blip-all') do
     RestClient.get 'http://blip.tv/posts/?user=skiptree&skin=json&pagelen=5'
    end
    result.sub!("blip_ws_results([[{", "[{")
    result.sub!(/\].+?\Z/,"")
    ActiveSupport::JSON.decode(result.strip)
  end
end
