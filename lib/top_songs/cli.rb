class TopSongs::CLI

  def call 
    puts "Today's top songs:"
    list_songs
  end

  def list_songs
    puts "1. Drake"
    puts "2. Ed Sheeran"
    puts "3. Bruno Mars & Cardi B."
    puts "4. Camila Cabello"
    puts "5. Post Malone Featuring 21 Savage"
  end
end
