require 'rest_client'
#U# require 'cacheable'

class BlipVideo
  #U# include Cacheable

  def self.all
    #U# result = memcached('blip-all') do
    result = RestClient.get 'http://blip.tv/posts/?user=skiptree&skin=json&pagelen=5'
    #U# end
    result.sub!("blip_ws_results([[{", "[{")
    result.sub!(/\].+?\Z/,"")
    ActiveSupport::JSON.decode(result.strip)
  end
end
