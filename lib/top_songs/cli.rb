class TopSongs::CLI

  def call
    puts "Today's top songs:"
    list_songs
    print_song
  end

  def list_songs
    #puts "1. Drake"
    #puts "2. Ed Sheeran"
    #puts "3. Bruno Mars & Cardi B."
    #puts "4. Camila Cabello"
    #puts "5. Post Malone Featuring 21 Savage"

    @songs = TopSongs::Song.create_songs
    @songs.each do |song|
      puts "#{song.number}. #{song.name}"
    end
  end

  def print_song
    input = nil
    while input != "exit"
      puts "Enter the number of the song you'd like more info on:"

      input = gets.strip
      if input.to_i > 0 && @songs.length >= input.to_i
        puts @songs[input.to_i - 1].name
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
