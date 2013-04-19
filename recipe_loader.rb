require './all'

def recipe(name)
  r = Recipe.new(name)
  CookBook.instance << r
  yield
end

def chop text
  r = CookBook.instance.recipes.first
  a = Struct.new(:action, :target)
  
  r << a.new('chop', text)
end

def with text
  r = CookBook.instance.recipes.first
  r.with=text  
end

load './data/recipe1'

p CookBook.instance.recipes