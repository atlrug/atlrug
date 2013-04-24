require 'rest_client'
#U# require 'cacheable'

class MeetupEvent
  #U# include Cacheable
  def self.get_next_month_events
    itime = Time.now.to_i
    #U# result = memcached('meetup') do
    result = RestClient.get "https://api.meetup.com/2/events?key=#{ApiCredentials.key('meetup')}&
        sign=true&
        time=#{itime},5m&
        group_urlname=atlantaruby".gsub(/\s/,'')
    #U# end
    ActiveSupport::JSON.decode(result)
  end
end
