class Cat
  @@cats = []
  attr_accessor :owner, :mood
  attr_reader :name
  def initialize(owner, name, mood = "nervous")
    @name = name
    @owner = owner
    @mood = mood
    @@cats << self
  end
  def self.all
    @@cats
  end
end