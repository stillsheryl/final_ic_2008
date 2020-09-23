class Recipe
  attr_reader :name, :ingredients
  def initialize(name)
    @name = name
    @ingredients = []
  end

  def add_ingredient(ingredient, quantity)
    @ingredients.each do |ingredient|
      @ingredients << ingredient if !@ingredients.include?(ingredient)
      ingredient.add_quantity(quantity)
    end
    @ingredients
  end

  def ingredients_required
    @ingredients.each do |ingredient|
      # require "pry"; binding.pry
    end
  end

end
