class TopSongs::Song

  attr_accessor :number, :name, :artist, :last_week

  @@all_songs = []

  def self.all_songs
    @@all_songs
  end

  def self.create_songs(song)
      new_song = TopSongs::Song.new
      new_song.name = song.css("h2.chart-row__song").text
      new_song.artist = song.css(".chart-row__artist").text.strip
      new_song.number = song.css("span.chart-row__current-week").text
      new_song.last_week = song.css("span.chart-row__last-week").text

      @@all_songs << new_song
  end

end
