class Song
  
  attr_accessor :name, :artist, :genre
  
  @@all = []
  
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@all << self
    add_song_info_to_genre(artist, genre)
  end
  
  def add_song_info_to_genre(artist, genre)
    genre.songs << self
    genre.artists << artist
  end
  
  def self.all
    return @@all
  end
  
end