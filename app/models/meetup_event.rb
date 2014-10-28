require 'rest_client'

class MeetupEvent

  def self.get_next_month_events
    itime = Time.zone.now.to_i
    result = begin
      RestClient.get "https://api.meetup.com/2/events?key" +
        "=#{ApiCredentials.key('MEETUP_KEY')}&
        sign=true&
        time=#{itime},5m&
        group_urlname=atlantaruby".gsub(/\s/,'')
    end
    ActiveSupport::JSON.decode(result)
  end
end
