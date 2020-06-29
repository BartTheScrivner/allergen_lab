class Recipe < ApplicationRecord
  has_many :ingredients_recipes
  has_many :ingredients, through: :ingredients_recipes

  def ingredient_count
    self.ingredients.count
  end

end
