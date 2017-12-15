class MP3Importer

  attr_accessor :path, :files


  def initialize(path)
    @path = path
  end

  def files
    Dir.entries(@path).select {|file| !File.directory? file}
    #binding.pry
  end

  def import
    files.each do |filename|
      Song.new_by_filename(filename)
    end
  end

end
