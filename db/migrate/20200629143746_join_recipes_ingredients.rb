class JoinRecipesIngredients < ActiveRecord::Migration[6.0]
  def change
    create_join_table :recipes, :ingredients
  end
end
