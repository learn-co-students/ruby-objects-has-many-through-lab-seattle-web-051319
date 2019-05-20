class Genre

    attr_accessor :name, :artist, :genre

    @@all = []

    def initialize(name)
        @name = name
        if @@all.include?(name) == false
            @@all << self
        end
    end

    def self.all
        @@all
    end

    def songs
        Song.all.select do |song|
            song.genre == self
        end
    end

    def artists
        songs.map do |song|
            song.artist
        end
    end


end