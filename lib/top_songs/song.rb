class TopSongs::Song
  attr_accessor :number, :name, :artist, :last_week

  def self.create_songs

    TopSongs::Scraper.
    song_1 = self.new
    song_1.name = "God's Plan"
    song_1.artist = "Drake"
    song_1.number = "1"
    song_1.last_week = "Last Week: 1"

    song_2 = self.new
    song_2.name = "Perfect"
    song_2.artist = "Ed Sheeran"
    song_2.number = "2"
    song_2.last_week = "Last Week: 2"

    [song_1, song_2]
  end

end
