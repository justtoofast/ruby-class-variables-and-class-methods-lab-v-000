class Song

  attr_accessor :name, :artist, :genre
  @@count = 0
  @@genres = []
  @@artists = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@genres << genre
    @@artists << artist
  end

  def self.count
    @@count
  end

  def self.genres
    @@genres = @@genres.uniq
    @@genres
  end

  def self.artists
    @@artists = @@genres.uniq
    @@artists
  end



  def self.artist_count
    artists = {}
    @@artists.each do |artist|
      if @@artists.include?(artist)
        artists[artist] += 1
      else
        artists[artist] += 1
      end
    end
    
  end
    
end
