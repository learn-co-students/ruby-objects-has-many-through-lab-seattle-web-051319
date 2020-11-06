class Artist 
  
  attr_accessor :name, :genres, :songs
  
  @@all = []
  
  def initialize(name)
    @name = name
    @songs = []
    @genres = []
    @@all << self
  end
  
  def new_song(name, genre)
    song = Song.new(name, self, genre)
    @songs << song
    @genres << genre
    return song
  end
  
  def self.all
    return @@all
  end
end