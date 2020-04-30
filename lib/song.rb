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
    @@genres.unless @@genres.not_include?(genre)
  end   
  
  def self.artists(artist)
    @@artists.unless @@genres.not_include?(artist) 
  end 
  
  def self.genre_count(genre_name, num_song )
    
    song = {}
    
    num_song.each do |s|
      song[genre_name] = s
    end 
    song
  end 
end 