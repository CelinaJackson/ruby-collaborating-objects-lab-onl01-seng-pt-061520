class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(file)
    song = self.new(song_name)
    song_name = file.split(" - ")[1]
    artist = file.split(" - ")[0]
    song.artist_name = artist
    song
  end



end
