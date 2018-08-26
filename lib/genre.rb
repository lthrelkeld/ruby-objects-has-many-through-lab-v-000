class Genre
  attr_accessor :name

  @@all = []
  @songs = []

  def initialize(name)
    @name = name

    @@all << self
  end

  def self.all
    @@all
  end

  def new_song(name,artist)
    song = Song.new(name,artist,self)
    @songs << song
  end

  def songs
  end
  
  def artists
  end
  
end
