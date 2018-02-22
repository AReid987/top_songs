class TopSongs::CLI

  def call
    puts "Today's top songs:"
    list_songs
    print_songs
  end

  def list_songs
    puts "1. Drake"
    puts "2. Ed Sheeran"
    puts "3. Bruno Mars & Cardi B."
    puts "4. Camila Cabello"
    puts "5. Post Malone Featuring 21 Savage"

    @songs = TopSongs::Song.create_songs
  end

  def print_songs
    input = nil
    while input != "exit"
      puts "Enter the number of the song you'd like more info on:"

      input = gets.strip
      if input == "1"
        puts "Song 1..."
      elsif input == "2"
        puts "Song 2..."
      elsif input == "3"
        puts "Song 3..."
      elsif input == "4"
        puts "Song 4..."
      elsif input == "5"
        puts "Song 5..."
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
