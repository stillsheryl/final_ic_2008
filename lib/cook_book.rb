require 'date'

class CookBook
  attr_reader :recipes
  def initialize
    @recipes = []
  end

  def add_recipe(recipe)
    @recipes << recipe
  end

  def date
    date = Date.today
    date.strftime("%m-%d-%Y")
  end

  def total_calories(recipe)
    recipe.ingredients.sum do |ingredient|
      ingredient.calories * ingredient.quantity
    end
  end

  def ingredients_by_calories(recipe)
    ingredients = []
    amounts = {}
    recipe.ingredients.map do |ingredient|
      amounts[:ingredient] = ingredient.name
      amounts[:amount] = "#{ingredient.quantity} #{ingredient.unit}"
      ingredients << amounts
    end
    ingredients
  end

  def summary
    summary_info = {}
    @recipes.each do |recipe|
      summary_info[:name] = recipe.name
      summary_info[:details] = ingredients_by_calories(recipe)
      summary_info[:total_calories] = total_calories(recipe)
    end
    summary_info
  end

end
