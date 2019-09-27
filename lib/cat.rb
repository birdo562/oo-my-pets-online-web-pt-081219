class Cat
  @@all = []
  attr_accessor :owner, :mood
  attr_reader :name
  def initialize(name, owner)
    @name = name
    @mood = "nervous"
    @all << self
  end
  def self.all
    @@all
  end
end