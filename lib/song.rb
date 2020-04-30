class Song 
  
  attr_accessor :name, :artist, :genre
  
  @@count = 0 
  @@genres = []
  @@artists = []
  
  def initialize(name, artist, genre)
    @name = name 
    @artist = artist
    @genre = genre
    @@genres << genre
    @@artists << artist 
    @@count += 1
  end 
  
  
  def self.count
    @@count
  end 
  
  
  def self.genres(genre)
    @@genres.unless @@genres.include?(genre)
  end   
  
  
  def self.artists
    @@artists.unless @@genres.include?(artist) 
  end 
  
  
  def self.genre_count
    
    song = {}
    
    @@genres.each do |genre_name, num_song|
      if song.include?(genre_name)
        genre_name += 1
      else 
        song[genre_name] = num_song
      end 
      song
    end 
  end 
end 