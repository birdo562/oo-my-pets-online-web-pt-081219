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
  def buy_cat(name)
    Cat.new(name, self)
  end
    def buy_dog(name)
      Dog.new(name, self)
    end
    def walk_dogs
  self.dogs.each {|dog| dog.mood = "happy"}
    end
    def feed_cats
      self.cats.each {|cat| cat.mood = "happy"}
    end
    def sell_pets
    pets = self.dogs + self.cats
    pets.each do |pets|
      pets.mood ="nervous"
      pets.owner = nil
      
    end
  end
    def list_pets
      "I have #{self.dogs.count} dog(s), and #{self.cats.count} cat(s)."
  end
end

