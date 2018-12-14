require "pry"

require_relative "./cat"
require_relative "./dog"
require_relative "./fish"



class Owner

attr_accessor :pets, :name
attr_reader :species

@@all = []

def initialize(pets)
  @pets = {fishes: [], cats: [], dogs: []}
  @species = "human"
  @@all << self
  @name = name
end

def self.all
  @@all
end

def self.count
  @@all.length
end

def self.reset_all
  @@all.clear
end

def say_species
  "I am a #{self.species}."
end

def buy_fish(fish_name)
  new_fish =  Fish.new(fish_name)
  self.pets[:fishes] << new_fish
end

def buy_cat(cat_name)
  new_cat =  Cat.new(cat_name)
  self.pets[:cats] << new_cat
end

def buy_dog(dog_name)
  new_dog =  Dog.new(dog_name)
  self.pets[:dogs] << new_dog
end

def walk_dogs
  self.pets[:dogs].each do |dog|
  dog.mood = "happy"
  end
end

def play_with_cats
  self.pets[:cats].each do |cat|
  cat.mood = "happy"
  end
end

def feed_fish
  self.pets[:fishes].each do |fish|
  fish.mood = "happy"
  end
end

def sell_pets

  self.pets.each do |species, individuals|
    individuals.each do |indi|
      indi.mood = "nervous"
      end
    individuals.clear
    end

  end

def list_pets
  number_of_fish = self.pets[:fishes].count
  number_of_dogs = self.pets[:dogs].count
  number_of_cats = self.pets[:cats].count

  "I have #{number_of_fish} fish, #{number_of_dogs} dog(s), and #{number_of_cats} cat(s)."


end



end #end of owner class
