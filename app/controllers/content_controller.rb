class ContentController < ApplicationController

  caches_action :meetings, expires_in: 2.hours
  caches_action :videos,   expires_in: 1.day

  def index

  end

  def meetings
    load_meetings
  end

  def videos
    load_videos
  end

  def learn
    render :template => "content/_learn"
  end

  def job
    render :template => "content/_job"
  end

  def hire
    render :template => "content/_hire"
  end


  protected
    def load_meetings
      @meetings         = MeetupEvent.get_next_month_events['results']
      @next_meeting     = @meetings.first
      @coming_meetings  = @meetings[1..-1]
    end

    def load_videos
      @videos            = BlipVideo.all
      @most_recent_video = @videos.first
      @other_videos      = @videos[1..-1]
    end
end
