module ApplicationHelper
  def meetup_link(meetup)
    link_to(meetup_title(meetup), meetup['event_url'])
  end

  def meetup_title(meetup)
    "#{meetup['name']} (#{date_display(Time.at(meetup['time'].to_i / 1000))})"
      .sub('The Atlanta Ruby Meetup Group ', '')
  end

  def date_display(time)
    time.strftime('%B %d').sub(' 0', ' ')
  end
end
