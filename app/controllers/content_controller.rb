class ContentController < ApplicationController
  def index
    load_meetings
    load_videos
  end

  def meetings
    load_meetings
  end

  def videos
    load_videos
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
