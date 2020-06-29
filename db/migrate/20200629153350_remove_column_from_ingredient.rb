class RemoveColumnFromIngredient < ActiveRecord::Migration[6.0]
  def change
    remove_column :users, :allergen
  end
end
