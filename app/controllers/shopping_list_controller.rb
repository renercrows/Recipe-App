class ShoppingListController < ApplicationController
  before_action :set_ingredients
  before_action :set_total_price

  def index; end

  private

  def set_ingredients
    @ingredients = []
    recipes = current_user.recipes.all
    recipes.each do |recipe|
      recipe_foods = RecipeFood.includes([:food]).where(recipe_id: recipe.id)
      recipe_foods.each do |ingredient|
        if @ingredients.any? { |a| a.food_id == ingredient.food_id }
          found_ingredient = @ingredients.select { |a| a.food_id == ingredient.food_id }
          found_ingredient[0].quantity = (found_ingredient[0].quantity + ingredient.food.quantity).round(2)
        else
          @ingredients.push(ingredient)
        end
      end
    end

    @foods = current_user.foods.all

    # only for printing on the screen
    @ingredient1 = @ingredients[0]
    @food_id = @foods[0].id
    # -------------------------------

    @ingredients.each do |ingredient|
      @ingredient_id = ingredient.food_id # only for printing on the screen
    end
  end

  def set_total_price
    @total_price = 0
    @ingredients.each { |e| @total_price += e.quantity * e.food.price }
  end
end
