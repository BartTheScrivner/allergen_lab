class RemoveAllergenFromIngredients < ActiveRecord::Migration[6.0]
  def change
    remove_column :ingredients, :allergen
  end
end
