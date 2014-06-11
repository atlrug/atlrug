require 'youtube_it'

class Video

  def self.all
    playlist.videos
  end

  def self.playlist_url
    "http://www.youtube.com/playlist?list=#{playlist_id}"
  end

  private

  def self.playlist
    @_playlist ||= begin
      client = YouTubeIt::Client.new(:dev_key => ENV['YOUTUBE_KEY'])
      client.playlist playlist_id
    end
  end

  def self.playlist_id
    ENV["YOUTUBE_PLAYLIST_ID"] || "PLqZY2tk6rSRn2Vapk2raOTFjXGiDbpQUU"
  end
end
