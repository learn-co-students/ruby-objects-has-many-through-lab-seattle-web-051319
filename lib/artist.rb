class Artist
attr_reader :name
# attr_accessor :song, :genre

@@all = []

def self.all
  @@all
end

def initialize(name)
  @name = name
  @@all << self
end

def songs
  Song.all.select do |song|
    song.artist == self
  end
end

def genres
  songs.collect do |song|
    song.genre
  end
end

def new_song(name, genre)
  Song.new(name, self, genre)
end

end
