require 'pry'

class Artist
  attr_accessor :name, :songs

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def save
    @@all << self
  end

  def add_song(song)
    @songs << song
  end

  def print_songs
    @songs.each { |song| puts song.name}
  end

  def self.all
    @@all
  end

  def self.find_or_create_by_name(name)
    puts name
    artist = @@all.find { |artist| artist.name == name}
    puts "HAPPENING #{artist}"
    if artist
      return artist
    else
      newly_created_artist = Artist.new(name)
      @@all << newly_created_artist
      puts "just added an artist"
      newly_created_artist
    end

  end
end
