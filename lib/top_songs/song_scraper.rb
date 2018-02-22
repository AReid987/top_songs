class TopSongs::SongScraper

  def open_page
    Nokogiri::HTML(open())
  end

  def scrape_songs
  end

  def make_songs
  end


end
