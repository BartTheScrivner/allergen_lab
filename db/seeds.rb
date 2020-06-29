# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

allergy_arr = %w[shellfish gluten tree-nuts egg soy none]

10.times do 
  User.create(name: Faker::Name.unique.name)
end

20.times do
  Recipe.create(name: Faker::Food.unique.dish, user_id: User.all.sample.id)
end

30.times do
  Ingredient.create(name: Faker::Food.unique.ingredient)
end

# 20.times do 
#   IngredientsRecipe.create(recipe_id: Recipe.all.sample.id, ingredient_id: Ingredient.all.sample.id)
# end 

Recipe.all.each do |recipe|
  5.times {IngredientsRecipe.create(recipe_id: recipe.id, ingredient_id: Ingredient.all.sample.id)}
end

10.times do
Allergy.create(user_id: User.all.sample.id, ingredient_id: Ingredient.all.sample.id)
end


