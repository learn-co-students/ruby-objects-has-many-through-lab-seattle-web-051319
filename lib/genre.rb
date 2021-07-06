class Genre
  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  # #songs, that iterates through all songs and finds the
  # songs that belong to that genre.
  def songs
    Song.all.select do |song|
      song.genre == self
    end
  end

  #  #artists, that iterates over the genre's collection
  # of songs and collects the artist that owns each song.
  def artists
    songs.collect do |song|
      song.artist
    end
  end

end
