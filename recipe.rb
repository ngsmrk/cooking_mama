class Recipe
  attr_accessor :name, :instructions, :utensil
  
  def initialize(name)
    @name = name
  end
  
  def << instruction
    @instructions ||= []
    @instructions << instruction
  end
  
  def with= utensil
    @utensil = utensil
  end
end