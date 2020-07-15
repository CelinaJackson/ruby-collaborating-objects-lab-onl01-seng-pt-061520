class Artist
  attr_accessor :name

  @@all = [ ]
  def initialize(name)
    @name = name
  end

  def self.all
    @@all

  end

  def add_song(song)
    song.artist = self
  end

  def find_or_create_by_name(name)
    song = song.new(name)
    add_song(song)
  end

  def print_songs

  end
end
