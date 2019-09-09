class Song

  attr_accessor :name
  attr_reader :artist, :genre

  @@all = []

  def initialize(name, artist = nil, genre = nil)
    @name = name
    self.artist = artist if artist
    self.genre = genre if genre
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

  def artist=(artist)
    @artist = artist
    artist.add_song(self)
  end

  def genre=(genre)
    @genre = genre
    genre.add_song(self)
  end

  # def self.find_by_name(name)
  #   self.all.find {|song| song.name == name}
  # end

  # def self.find_or_create_by_name(name)
  #   self.find_by_name(name) || self.create(name)
  # end

  def new_from_filename(filename)

    artist = filename.split(" - ")[0]
    name = (filename.split(" - ")[1])
    genre = (filename.split(" - ")[2])
    #Song - name artist genre
    self.new(name, artist, genre)
    end

end
