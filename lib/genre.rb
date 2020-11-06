class Genre
  
  attr_accessor :name, :songs, :artists
  
  @@all = []
  
  def initialize(name)
    @name = name
    @songs = []
    @artists = []
    @@all << self
  end
  
  def self.all
    return @@all
  end
  
end