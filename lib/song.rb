class Song 
  
  attr_accessor :name
  attr_reader :artist 
  
  @@all = []
  
  def initialize(name)
    @name = name 
    @@all << self 
  end 
  
 
  def self.all 
    @@all 
  end 
  
  
  def self.new_by_filename(file_name)
    arr = file_name.split("-").map(&:strip)
    artist = Artist.new(arr[0])
    song = self.new(arr[1])
    song.artist = artist
    song
  end 
  
 
  def artist=(artist) 
    @artist = artist
  end 
  
  def artist_name=(name) 
  #Song.all = Artist.all.find {|artist| artist.name == name})
  end 
  
end 



