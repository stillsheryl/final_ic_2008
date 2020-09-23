class Ingredient
  attr_reader :name, :unit, :calories, :quantity
  def initialize(info)
    @name = info[:name]
    @unit = info[:unit]
    @calories = info[:calories]
    @quantity = 0
  end

  def add_quantity(quantity)
    @quantity += quantity
  end

end
