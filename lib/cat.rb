class Cat
  @@all = []
  attr_accessor :owner, :mood
  attr_reader :name
  def initialize(owner, name, mood = "nervous")
    @name = name
    @mood = mood
    @@all << self
    owner.all << self
  end
  def self.all
    @@all
  end
end