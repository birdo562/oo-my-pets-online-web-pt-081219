class Owner
  @@all= []
attr_reader :name, :species

def initialize(name)
  @name = name
  @species = "human"
  @@all << self
end
def say_species
 puts "I am a #{@species}!"
end
  def self.all
    @@all
  end
  
end
