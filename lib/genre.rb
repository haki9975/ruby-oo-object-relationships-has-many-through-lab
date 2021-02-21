require 'pry'

class Genre
    attr_accessor :name, :artist, :genre
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def songs
     Song.all.select { |song| song.genre == self }
    end

    def self.all
        @@all
    end

    def artists
    artist =  Song.all.select { |a|  a.genre == self }
       artist.collect {|a| a.artist}
    end

end
