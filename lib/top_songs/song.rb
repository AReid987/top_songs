class TopSongs::Song

  attr_accessor :number, :name, :artist, :last_week

  @@all_songs = []

  def self.create_songs(song)
      new_song = TopSongs::Song.new
      new_song.name = song.css("h2.chart-row__song").text #=> name
      #new_song.artist = song.css("a.chart-row__artist")[i].text.strip #=> artist
      new_song.number = song.css("span.chart-row__current-week").text# => current rank
      new_song.last_week = song.css("span.chart-row__last-week").text #=> last week

      @@all_songs << new_song
      #binding.pry
  end

  def self.all_songs
    @@all_songs
  end
end
