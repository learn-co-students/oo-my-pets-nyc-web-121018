class Cat
  attr_accessor :mood
  attr_reader :name, :mood

  def initialize(name, mood="nervous")
    @name = name
    @mood = mood
  end

end
