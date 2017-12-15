class Song
  attr_accessor :name, :artist, :genre, :artist

  def initialize(name)
    @name = name
  end

  # def artist=(artist)
  #   self.artist = Artist.find_or_create_by_name(artist)
  #   self.artist.add_song(self)
  # end

  def self.new_by_filename(filename)
    song_data_array = filename.split(" - ")

    new_song_artist = Artist.find_or_create_by_name(song_data_array[0])
    new_song_name = song_data_array[1]
    #binding.pry

    new_song = Song.new(new_song_name)
    new_song.artist = new_song_artist
    new_song_artist.songs << new_song
    #binding.pry
    new_song

  end
end
