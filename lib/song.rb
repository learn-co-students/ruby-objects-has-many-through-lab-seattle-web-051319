class Song
    attr_accessor :name, :artist, :genre

    @@all = []
    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@all << self
        add_info(artist, genre)
    end
    def self.all
        @@all
    end
    def add_info(artist, genre)
        genre.songs << self
        genre.artists << artist
    end
    


end
