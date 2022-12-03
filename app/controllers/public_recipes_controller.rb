class PublicRecipesController < ApplicationController
  def index
    @public_recipes = Recipe.where(public: true).includes(:user, :recipe_foods, :foods)
    @prices = []
    @public_recipes.each do |recipe|
      recipe.recipe_foods.each do |food|
        value = food.quantity * food.food.price
        @prices.push(value)
      end
    end
  end
end
