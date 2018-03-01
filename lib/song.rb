class Song
  attr_accessor :name, :artist, :genre
  @@count = 0
  @@genres = []

  def new(name, artist, genre)
    @song = song
    @@count += 1
    @@genres << genre
  end

  def count
    @@count
  end
end