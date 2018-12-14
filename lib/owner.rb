require 'pry'

class Owner

  attr_accessor :name
  attr_reader :species

  @@all = []
  attr_reader :name
  attr_accessor :pets

  def initialize(name)
    @name = name
    @@all << self
    @species = "human"
    @pets = {fishes: [], cats: [], dogs: []}
  end

  def self.all
    @@all
  end

  def self.count
    @@all.count
    # self.reset_all
  end

  def self.reset_all
    self.all.clear
  end

  def buy_fish(name)
    self.pets[:fishes] << Fish.new(name)
  end

  def buy_dog(name)
    self.pets[:dogs] << Dog.new(name)
  end

  def buy_cat(name)
    self.pets[:cats] << Cat.new(name)
  end

  def feed_fish
    # binding.pry
    self.pets[:fishes].each do |fish| # fish instance
      fish.mood = "happy"
    end
  end

  def play_with_cats
    # binding.pry
    self.pets[:cats].each do |cat| # cat instance
      cat.mood = "happy"
    end
  end

  def walk_dogs
    # binding.pry
    self.pets[:dogs].each do |dog| # dog instance
      dog.mood = "happy"
    end
  end

  def say_species
    "I am a #{species}."
  end

  def list_pets
    # self.pets.values.each do |pet|
      # binding.pry
      "I have #{self.pets[:fishes].count} fish, #{self.pets[:dogs].count} dog(s), and #{self.pets[:cats].count} cat(s)."

  end

  def sell_pets
    self.pets.each do |type, pets|
      pets.each do |pet|
        pet.mood = "nervous"
      end
      pets.clear
    end
  end

end
