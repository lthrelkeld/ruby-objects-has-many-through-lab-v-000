class Artist
  attr_accessor :name

  @@all = []
  #@songs = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_song(name,genre)
    song = Song.new(name,self,genre)
    #@songs << song
  end

  def songs
    Songs.all.select {|song| song.artist == self }
  end

  def genres
    songs.collect {|song| song.genre}
  end

end
