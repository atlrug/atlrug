require 'rest_client'

class BlipVideo

  def self.all
    result = begin
     RestClient.get 'http://blip.tv/posts/?user=skiptree&skin=json&pagelen=5'
    end
    result.sub!("blip_ws_results([[{", "[{")
    result.sub!(/\].+?\Z/,"")
    ActiveSupport::JSON.decode(result.strip)
  end
end
