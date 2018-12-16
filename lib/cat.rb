class Cat


    #
    # can initialize a cat
    #   initializes with a name
    #   can't change its name
    #   initializes with a nervous mood
    #   can change its mood
    #



attr_reader :name
attr_accessor :mood

def initialize (name)
  @name = name
  @mood = "nervous"
end




end  # end Cat class
