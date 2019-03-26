class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

  def find_or_create_by_name(name)

  end
  def self.create #class constructor
    song = self.new
    self.all << song
    song
  end

  def self.new_by_name(title)
    song = self.new
    song.name = title
    song
  end

  def self.create_by_name(title)
    song = self.new
    song.name = title
    song
  end

  def self.find_by_name(title) #class finders
    result = self.all.detect {|song| song.name == title}
    result
  end

  def self.find_or_create_by_name(title)
    result = self.find_by_name(title)
    if result
      result
    else
      self.create_by_name(title)
    end
  end

  def self.alphbetical
    sorted = self.all.sort_by {|song| song.name}
    sorted
  end

  def self.new_from_filename(filename)
    song_array = filename.splot(" - ")
    song_array[1] = song_array[1].chomp(" .mp3")
    song = self.new_from_filename
    song.name = song_array[1]
    song.artist_name = song_array[0]
    song
  end

  def self.create_from_filename(filename)
    result = self.new_from_filename(filename)
    song = self.create_by_name
    song.name = result.name
    song.artist_name = result.artist_name
    song
  end

  def self.destroy_all

  end

end
