class Owner

  @@all = []

  attr_reader :species
  attr_accessor :name, :pets

  def initialize(species)
    @name = ""
    @species = species
    @pets = {:fishes => [], :dogs => [], :cats => []}
    @@all << self
  end

  def self.all
    @@all
  end

  def self.count
    @@all.count
  end

  def self.reset_all
    @@all.clear
  end

  def say_species
    "I am a #{self.species}."
  end

  def buy_fish(fish_name)
    new_fish = Fish.new(fish_name)
    self.pets[:fishes] << new_fish
  end

  def buy_cat(cat_name)
    new_cat = Cat.new(cat_name)
    self.pets[:cats] << new_cat
  end

  def buy_dog(dog_name)
    new_dog = Dog.new(dog_name)
    self.pets[:dogs] << new_dog
  end

  def walk_dogs
    my_dogs = self.pets[:dogs]
    my_dogs.each do |dog|
      dog.mood = "happy"
    end
  end

  def play_with_cats
    my_cats = self.pets[:cats]
    my_cats.each do |cat|
      cat.mood = "happy"
    end
  end

  def feed_fish
    my_fishes = self.pets[:fishes]
    my_fishes.each do |fish|
      fish.mood = "happy"
    end
  end

  def sell_pets
    self.pets[:fishes].each do |pet|
      pet.mood = "nervous"
    end
    self.pets[:dogs].each do |pet|
      pet.mood = "nervous"
    end
    self.pets[:cats].each do |pet|
      pet.mood = "nervous"
    end
    self.pets = {:fishes => [], :dogs => [], :cats => []}
  end

  def list_pets
    fish_num = self.pets[:fishes].count
    dog_num = self.pets[:dogs].count
    cat_num = self.pets[:cats].count
    "I have #{fish_num} fish, #{dog_num} dog(s), and #{cat_num} cat(s)."
  end

end
