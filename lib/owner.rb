class Owner
  @@all= []
attr_reader :name, :species

def initialize(name)
  @name = name
  @species = "human"
  @@all << self
  @cats = []
  @dogs = []
end
def say_species
"I am a #{@species}."
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
end
