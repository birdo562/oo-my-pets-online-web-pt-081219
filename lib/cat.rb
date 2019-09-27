class Cat
  @@cats = []
  attr_accessor :owner, :mood
  attr_reader :name
  def initialize(owner, name)
    @name = name
    @owner = owner
    @mood = "nervous"
    @@cats << self
  end
  def self.all
    @@cats
  end
end