require 'pry'
class Artist 
    attr_accessor :name #Artists  name
  
    def initialize(name) #When we make an aritst
        @name = name # add the given name to the instance of name
    end
    def add_song(song)
        song.artist = self # set the artists name = to the Artist instance
    end
    def songs
        Song.all.select { | obj | obj.artist == self } #reader for the songs array
    end
    def add_song_by_name(string_song)
        song = Song.new(string_song) #same as add_song but we need to make the song class ourself.
        song.artist = self
    end
     def self.song_count 
        Song.all.size # returns the size of the songs array
     end
end