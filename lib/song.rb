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

  def self.find_or_create_by_name

  end

  def self.alphbetical

  end

  def self.new_from_filename

  end

  def self.create_From_filename

  end

  def self.destroy_all

  end

end
