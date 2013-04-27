require 'rest_client'
require 'cacheable'

class MeetupEvent
  include Cacheable
  def self.get_next_month_events
    itime = Time.now.to_i
    result = memcached('MEETUP_KEY') do
      RestClient.get "https://api.meetup.com/2/events?key" +
        "=#{ApiCredentials.key('MEETUP_KEY')}&
        sign=true&
        time=#{itime},5m&
        group_urlname=atlantaruby".gsub(/\s/,'')
    end
    ActiveSupport::JSON.decode(result)
  end
end
