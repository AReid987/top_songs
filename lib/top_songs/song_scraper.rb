class TopSongs::SongScraper

  def open_page
    Nokogiri::HTML(open("https://www.billboard.com/charts/hot-100")) #open page
  end

  def scrape_songs  #select css for songs
    self.open_page.css("div.chart-row__main-display")
  end

  def make_songs #create songs from the scrape_songs selection
    #i = 0
    scrape_songs.each do |song|
      if TopSongs::Song.all_songs.length <= TopSongs::CLI.song_number - 1
        TopSongs::Song.create_songs(song)
      end
    #  i += 1
    end
  end

end
