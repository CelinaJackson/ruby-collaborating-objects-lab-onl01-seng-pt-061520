class MP3Importer
  attr_accessor :path

  files = []

  def initialize(path)
    @path = path
  end

  def files
    @files = Dir.glob("#{@path}/*.mp3").collect{ |file| file.gsub("#{@path}/", "") }
  end

  def import(list_of_filenames)
    self.files.each {|file| Song.new_by_filename(file)}
  end

end
