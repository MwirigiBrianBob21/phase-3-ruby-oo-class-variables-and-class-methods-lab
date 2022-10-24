require 'pry'

class Song
    attr_accessor :name, :genre, :artist
    @@count = 0
    @@genres = []
    @@artists = []
    @@genre_count = {}
    @@artist_count = {}

    def initialize(name, artist, genre)
        @@count +=1

        @genre = genre
        @@genres << genre

        @artist = artist
        @@artists << artist
        @name = name

        if(@@genre_count[genre])
            @@genre_count[genre] +=1
        else
            @@genre_count[genre] = 1
        end

        if(@@artist_count[artist])
            @@artist_count[artist] +=1
        else
            @@artist_count[artist] =1
        end

        
        
    end

    # returns total number of songs created
    def self.count
        @@count
    end
# returns the genres array Song.genres - returns genres that are unique
    def self.genres
        @@genres.uniq!
    end
# returns the artists array
    def self.artists
        @@artists.uniq!
    end

    def self.artist_count
        @@artist_count
    end
    def self.genre_count
        @@genre_count
    end

end
kalale = Song.new("Kalale", "Mejja", "gengetone")
sorry = Song.new("Sorry", "JB", "RnB")
hello = Song.new("Hello", "Adelle", "RnB")


binding.pry

