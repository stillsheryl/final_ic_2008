require 'minitest/autorun'
require 'minitest/pride'
require './lib/ingredient'
require './lib/pantry'

class PantryTest < Minitest::Test

  def test_it_exists_and_has_attributes
    pantry = Pantry.new

    assert_instance_of Pantry, pantry
    assert_equal ({}), pantry.stock
  end

  def test_check_stock
    pantry = Pantry.new
    ingredient1 = Ingredient.new({name: "Cheese", unit: "oz", calories: 50})
    ingredient2 = Ingredient.new({name: "Macaroni", unit: "oz", calories: 200})

    assert_equal 0, pantry.stock_check(ingredient1)
  end

end
