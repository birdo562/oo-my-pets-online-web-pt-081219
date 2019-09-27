class Dog
  @@dogs = []
  attr_accessor :owner, :mood
  attr_reader :name
  def initialize(owner, name, mood="nervous")
    @name= name
    @owner= owner
    @mood= mood
    @@dogs << self
  end
  def self.all
    @@dogs
  end
end