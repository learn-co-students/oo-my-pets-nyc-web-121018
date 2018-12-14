require 'pry'
class Owner

  attr_reader :species
  attr_accessor :pets, :name
  @@all = []

  def initialize(species)
    @species = species
    @pets = {
      fishes: [],
      cats: [],
      dogs: []
    }
    @@all << self
  end

  def self.all
    @@all
  end

  def self.count
    #count returns the number of owners that have been created
    #calls reset_all
    @@all.count

  end

  def self.reset_all
    @@all.clear
    #count can reset the owners that have been created
  end

  #def species

  #end

  def say_species
    "I am a #{@species}."
  end

  def buy_fish(fish_name)
    new = Fish.new(fish_name)
    @pets[:fishes] << new
  end

  def buy_cat(cat_name)
    new = Cat.new(cat_name)
    @pets[:cats] << new
  end

  def buy_dog(dog_name)
    new = Dog.new(dog_name)
    @pets[:dogs] << new
  end

  def walk_dogs
    #walks the dogs which makes the dogs' moods happy
    @pets[:dogs].map do |dog|
    dog.mood = "happy"
    end
  end

  def play_with_cats
    #plays with the cats which makes the cats moods happy
    @pets[:cats].map do |cat|
    cat.mood = "happy"
    end
  end

  def feed_fish
    #feeds the fishes which makes the fishes' moods happy
    @pets[:fishes].map do |fish|
    fish.mood = "happy"
    end
  end

  def sell_pets
    #can sell all its pets, which make them nervous
    @pets[:fishes].each do |fish|
      fish.mood = "nervous"
    end
    @pets[:cats].each do |cat|
      cat.mood = "nervous"
    end
    @pets[:dogs].each do |dog|
      dog.mood = "nervous"
    end
    @pets.clear
  end

  def list_pets
    #can list off its pets
    fish = @pets[:fishes].count
    dog = @pets[:dogs].count
    cat = @pets[:cats].count 
    "I have #{fish} fish, #{dog} dog(s), and #{cat} cat(s)."
  end

end
