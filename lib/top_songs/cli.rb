class TopSongs::CLI

  def call
    TopSongs::SongScraper.new.make_songs

    puts "Today's top songs:"
    list_songs
    print_song
  end

  def list_songs

    @songs = TopSongs::Song.all_songs
    @songs.each do |song|
      puts "#{song.number}. #{song.name}"
      #binding.pry 
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
