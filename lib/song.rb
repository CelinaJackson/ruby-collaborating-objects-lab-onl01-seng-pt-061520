class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def self.all
    @@all
  end

  def self.new_by_filename(file)
    song = self.new
    song.name = file.split(" - ")[1]
    song
  end



end
