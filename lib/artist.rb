require 'pry'
class Artist 
    attr_accessor :name #Artists  name
  
    def initialize(name) #When we make an aritst
        @name = name # add the given name to the instance of name
        @songs = [] # initialize the instance of songs to an empty array
    end
    def add_song(song)
        binding.pry
        song.artist = self # set the artists name = to the Artist instance
        @songs << song # shovel the song instance into the instance of the songs array
    end
    def songs
        @songs #reader for the songs array
    end
    def add_song_by_name(string_song)
        song = Song.new(string_song) #same as add_song but we need to make the song class ourself.
        song.artist = self
        @songs << song
    end
    def self.song_count 
        @songs.size # returns the size of the songs array
    end
end