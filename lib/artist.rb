class Artist
  attr_accessor :name

  @@all = [ ]
  def initialize(name)
    @name = name
  end

  def songs
    Songs.all.select {|song| song.artist == self}
  end

  def add_song(song)
    song.artist = self
end
