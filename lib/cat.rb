class Cat

  @@all = []

  attr_reader :name
  attr_accessor :mood

  def initialize(name, mood = "nervous")
    @name = name
    @mood = mood

    @@all << self
  end

  def self.all
    @@all
  end
end
