class Song

   @@count = 0
   @@artists = Array.new
   @@genres = Array.new

   attr_accessor :name, :artist, :genre

   def initialize (name, artist, genre)
      @name = name
      @artist = artist
      @genre = genre

      @@count += 1
      @@artists.push(artist)
      @@genres.push(genre)
   end

   def self.count
      @@count
   end

   def self.artists
      @@artists.uniq
   end

   def self.genres
      @@genres.uniq
   end

   def self.genre_count
      genre_count = Hash.new
      @@genres.each do |genre|
         if !(genre_count.keys.include?(genre)) then genre_count[genre] = 0 end
         genre_count[genre] += 1
      end
      genre_count
   end

   def self.artist_count
      artist_count = Hash.new
      @@artists.each do |artist|
         if !(artist_count.keys.include?(artist)) then artist_count[artist] = 0 end
         artist_count[artist] += 1
      end
      artist_count
   end
   
end