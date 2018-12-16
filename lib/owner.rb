class Owner

attr_reader :species
attr_accessor :name, :pets, :fish, :dog, :cat

@@all =[]
@@count = {:fishes => [], :dogs => [], :cats => []}

def species(species)
  @species = species
  @name = name
  @@all << self
end

def self.all
  @@all
end 
