class TopSongs::CLI

  @@song_number = nil

  def self.song_number
    @@song_number
  end

  def call

    puts "How many top songs would you like to see? (enter 1 - 100)"
    @@song_number = gets.strip.to_i
    puts "Today's top #{@@song_number} songs:"
    TopSongs::SongScraper.new.make_songs
    list_songs
    print_song
  end

  def list_songs
    @songs = TopSongs::Song.all_songs
    @songs.each do |song|
      #binding.pry
      puts "#{song.number}. #{song.name}"
    end
  end

  def print_song
    input = nil
    while input != "exit"
      puts "Enter the number of the song you'd like more info on:"

      input = gets.strip
      if input.to_i > 0 && @songs.length >= input.to_i
        the_song = @songs[input.to_i - 1]
        puts "#{the_song.number}. #{the_song.artist} - #{the_song.name} - #{the_song.last_week} "
      elsif input == "list"
        list_songs
      elsif input == "exit"
        goodbye
      else
        puts "Invalid entry..."
      end
    end
  end

  def goodbye
    puts "Goodbye."
  end

end
