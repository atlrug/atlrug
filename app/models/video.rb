class Video

  def self.all
    playlist.playlist_items
  end

  def self.playlist_url
    "http://www.youtube.com/playlist?list=#{playlist_id}"
  end

  def self.player_url(video_id)
    "https://www.youtube.com/watch?v=#{video_id}&feature=youtube_gdata_player"
  end

  def self.embed_url(video_id)
    "http://www.youtube.com/v/#{video_id}&feature=youtube_gdata_player"
  end

  private

  def self.playlist
    @_playlist ||= begin
      Yt::Playlist.new url: playlist_url
    end
  end

  def self.playlist_id
    ENV["YOUTUBE_PLAYLIST_ID"] || "PLqZY2tk6rSRn2Vapk2raOTFjXGiDbpQUU"
  end
end
