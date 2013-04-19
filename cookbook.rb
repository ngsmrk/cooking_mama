require 'singleton'

class CookBook
	include Singleton
  
  attr_accessor :recipes
  
  def initialize
    @recipes = []
  end
  
  def << recipe
    @recipes << recipe
  end

end