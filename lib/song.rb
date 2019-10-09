class Song
  attr_accessor :name, :artist_name, :song
  @@all = []
  
  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

  def self.create
    song = Song.new 
    song.save
    song
  end 
  
  def self.new_by_name(song_name)
    song = new 
    song.name = song_name
    song
  end 
  
  def self.create_by_name(song_name)
    song = create
    song.name = song_name
  
  
end
