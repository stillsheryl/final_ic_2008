class Recipe
  attr_reader :name, :ingredients
  def initialize(name)
    @name = name
    @ingredients = []
  end

  def add_ingredient(ingredient, amount)
    @ingredients << ingredient if !@ingredients.include?(ingredient)
  end

end
