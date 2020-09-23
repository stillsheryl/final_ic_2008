class CookBook
  attr_reader :recipes
  def initialize
    @recipes = []
  end

  def add_recipe(recipe)
    @recipes << recipe
  end

  def date
    "04-22-2020"
  end

  def total_calories
    recipe_calories = {}
    @recipes.each do |recipe|
      total_calories = 0
      recipe.ingredients.each do |ingredient|
        total_calories += ingredient.calories * ingredient.quantity
      end
      recipe_calories[recipe] = total_calories
    end
    recipe_calories
  end

  # def summary
  #   @recipes. each do |recipe|
  #     require "pry"; binding.pry
  #   end
  # end

end


# {:name=>"Mac and Cheese",
# :details=> {:ingredients=>
#   [{:ingredient=>"Macaroni", :amount=>"8 oz"},
#   {:ingredient=>"Cheese", :amount=>"2 C"}], :total_calories=>440}
#   }
