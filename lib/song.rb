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
    @@artists = @@artists.uniq
    @@artists
  end

  def self.genre_count
    genres_hash = {}
    @@genres.each do |genre|
      if genres.include?(genre)
        genres[genre] += 1
      else
        genres[genre] = 1
      end
    end
    genres_hash
  end

  def self.artist_count
    artists_hash = {}
    @@artists.each do |artist|
      if @@artists.include?(artist)
        artists[artist] += 1
      else
        artists[artist] = 1
      end
    end
    artists_hash
  end
end
