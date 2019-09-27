class Owner
  @@all= []
attr_reader :name, :species
attr_accessor :cats, :dogs

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
  def dogs
    Dog.all.select {|dog| dog.owner == self}
  end
  def cats
    Cat.all.select {|cat| cat.owner == self}
  end
  def buy_cat
    
end

