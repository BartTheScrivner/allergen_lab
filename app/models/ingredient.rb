class Ingredient < ApplicationRecord
  has_many :ingredients_recipes
  has_many :recipes, through: :ingredients_recipes
  has_many :allergies
  has_many :users, through: :allergies
end
