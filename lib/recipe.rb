class Recipe
  attr_reader :name, :ingredients
  def initialize(name)
    @name = name
    @ingredients = []
    @ingredients_required = {}
  end

  def add_ingredient(ingredient, quantity)
    ingredient.add_quantity(quantity)
    @ingredients << ingredient if !@ingredients.include?(ingredient)
  end

  def ingredients_required
    required = {}
    @ingredients.each do |ingredient|
      required[ingredient] = ingredient.quantity
    end
    required
  end

end
