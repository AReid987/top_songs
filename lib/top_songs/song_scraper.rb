class TopSongs::SongScraper

  def open_page
    Nokogiri::HTML(open("https://www.billboard.com/charts/hot-100"))
    binding.pry
  end

  def scrape_songs
  end

  def make_songs
  end


end
