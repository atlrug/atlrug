require 'youtube_it'

class Video

  def self.all
    client = YouTubeIt::Client.new(:dev_key => ENV['YOUTUBE_KEY'])

    playlist = client.playlist(ENV['YOUTUBE_PLAYLIST_ID'])
    playlist.videos
  end

  def self.playlist_url
    client = YouTubeIt::Client.new(:dev_key => ENV['YOUTUBE_KEY'])

    playlist = client.playlist(ENV['YOUTUBE_PLAYLIST_ID'])
    "http://www.youtube.com/playlist?list=#{playlist.playlist_id}"
  end
end
