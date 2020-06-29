class IngredientsController < ApplicationController

    def index
        @ingredients = Ingredient.left_joins(:allergies).group(:id).order("COUNT(user_id) DESC")
    end

    def show

    end
end
