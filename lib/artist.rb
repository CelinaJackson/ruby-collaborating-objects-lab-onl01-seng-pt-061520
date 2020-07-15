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
    @songs << song
  end

  def self.find_or_create_by_name(name)
    if self.find(name)
      self.find(name)
    else
      self.create(name)
    end
  end

  def self.find(name)
    @@all.find do |artist|
      artist.name == name
    end
  end

  def print_songs()

  end
end
