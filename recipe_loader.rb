require './all'

def recipe(name)
  r = Recipe.new(name)
  CookBook.instance << r
  yield if block_given?
end

def with(text)
  r = CookBook.instance.recipes.first
  r.with=text
  yield if block_given?  
end

def add_instruction(action, target)
  r = CookBook.instance.recipes.first
  a = Struct.new(:action, :target)
  
  r << a.new(action, target)
end

def chop(text)
  add_instruction(__method__, text)
end

def fry text
  add_instruction(__method__, text)  
end

def heat text
  add_instruction(__method__, text)  
end

def add text
  add_instruction(__method__, text)  
end

def cook text
  add_instruction(__method__, text)  
end

load './data/recipe1'

p CookBook.instance.recipes