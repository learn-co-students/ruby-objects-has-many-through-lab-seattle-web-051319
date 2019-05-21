require "pry"
class Genre
  attr_accessor :name, :song, :artist

  @@all = []

def initialize(name)
    @name = name
    @@all << self
  end

  def songs
    Song.all.select {|song| song.genre == self}
    #go through @@all and find songs with matching genre == self
  end

  def artists
    Song.all.collect {|song| song.artist}
    #@@all for the list and then mathc the artists
  end

  def add_song(song)
    songs << song
  end

  def self.all
    @@all
  end

end
