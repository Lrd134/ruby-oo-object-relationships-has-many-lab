class Song
    attr_accessor :name
    @@all = []
    def artist=(artist)
        @artist = artist
    end
    def artist
        @artist
    end
    def initialize(title)
        @name = title
        @@all << self
    end
    def artist_name
        @artist_name
    end
    def self.all
        @@all
    end
end