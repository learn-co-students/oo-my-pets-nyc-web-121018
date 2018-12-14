require "pry"

class Owner
  attr_accessor :count, :name, :pets
  attr_reader :species

  @@all = []

  def initialize(species)
    @species = species
    @pets = {
      :fishes => [],
      :dogs => [],
      :cats => []}
    @@all << self
  end

  #owner class methods
  def self.all
    @@all
  end

  def self.count
    @@all.count
    #self.all.clear
  end

  #instance methods

  def say_species
    "I am a #{@species}."
  end

  def buy_fish(name)
    fish = Fish.new(name)
    @pets[:fishes] << fish
  end

  def buy_cat(name)
    cat = Cat.new(name)
    @pets[:cats] << cat
  end

  def buy_dog(name)
    dog = Dog.new(name)
    @pets[:dogs] << dog
  end

  def walk_dogs
    @pets[:dogs].map do |dog|
      dog.mood = "happy"
    end
  end

  def play_with_cats
    @pets[:cats].map do |cat|
      cat.mood = "happy"
    end
  end

  def feed_fish
    @pets[:fishes].map do |fish|
      fish.mood = "happy"
    end
  end

  def self.reset_all
    @@all.clear
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
   fish = @pets[:fishes].count
   cat = @pets[:cats].count
   dog = @pets[:dogs].count
   "I have #{fish} fish, #{dog} dog(s), and #{cat} cat(s)."
 end

end
