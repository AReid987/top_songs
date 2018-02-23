class TopSongs::Song
  attr_accessor :number, :name, :artist, :last_week

  def self.create_songs
    #TopSongs::Scraper.new
    songs = []

    doc = Nokogiri::HTML(open("https://www.billboard.com/charts/hot-100"))
    #doc.css("div.chart-row__main-display") => songs
    #songs.css("h2.chart-row__song") => name
    #songs.css("a.chart-row__artist").attribute("data-tracklabel").value => artist
    #songs.css("span.chart-row__current-week") => current rank
    #songs.css("span.chart-row__last-week") => last week

    binding.pry
    songs
  end

end
