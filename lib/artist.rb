require_relative 'song.rb'
require 'pry'

class Artist

    attr_accessor :name
    attr_reader :songs

    def initialize(name)
        @name = name
        @songs = []
    end

    
    def add_song(song)
        song.artist = self
        @songs << song
    end

    def add_song_by_name(title)
        song = Song.new(title)
        song.artist = self
    end

    def songs
        Song.all.select { |song| song.artist = self }
    end

    def self.song_count
        Song.all.count 
    end        

end