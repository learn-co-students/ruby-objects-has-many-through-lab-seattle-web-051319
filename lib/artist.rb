require "pry"

class Artist
  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
    songs = []
  end

  def new_song(name, genre)
    Song.new(name, self, genre)
  end

  def songs
    Song.all.select {|song| song.artist == self}
  end

  def genres
    #binding.pry
    Song.all.collect {|song| song.genre }
  end


  def self.all
    @@all
  end

end
