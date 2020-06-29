class RecipesController < ApplicationController

    def index
        if params["sort"] == "ascend"
            @recipes = Recipe.all.sort_by{|recipe| recipe.ingredients.length}
        else
            @recipes = Recipe.all
        end
        render :index
    end

    def show
        @recipe = Recipe.find(params[:id])
    end

    def new
        @recipe = Recipe.new
    end

    def create
        @recipe = Recipe.create(recipe_params)
        redirect_to recipe_path(@recipe.id)
    end

    private

    def recipe_params
        params.require(:recipe).permit(:name, :user_id)
    end
end
