require_relative './artist'
require_relative './song'

class Genre

    @@all = []

    attr_accessor :name

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def songs
        Song.all.find_all{|song| song.genre == self}
    end

    def artists
        songs.map{|song| song.artist}
    end

end