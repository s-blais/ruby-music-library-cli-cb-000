class Song

  attr_accessor :name, :artist

  @@all = []

  def initialize(name, artist = nil)
    @name = name
    @artist = artist if artist == nil
  end

  def self.all
    @@all
  end

  def save
    @@all << self
  end

  def self.destroy_all
    self.all.clear
  end

  def self.create(name)
    song = Song.new(name)
    song.save
    song
  end

end
