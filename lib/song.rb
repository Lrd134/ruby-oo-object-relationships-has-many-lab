# class Song
#     attr_accessor :name
#     @@all = []
#     def artist=(artist)
#         @artist = artist
#     end
#     def artist
#         @artist
#     end
#     def initialize(title)
#         @name = title
#         @@all << self
#     end
#     def artist_name
#         @artist_name
#     end
#     def self.all
#         @@all
#     end
# end
class Song
    attr_accessor :name, :artist
  
    @@all = []
  
    def initialize(name)
      @name = name
      @@all << self
    end
  
    def self.all
      @@all
    end
  
    def artist_name
      @artist.name if @artist
    end
  end
  