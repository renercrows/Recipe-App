class GeneralShoppingListController < ApplicationController
  def index
    @foods = current_user.foods
    @total = 0
    @shopping_list = []
    @total = []

    @foods.each do |food|
      recipe_foods_quantity = RecipeFood.where(recipe_id: params[:recipe_id]).joins(:food).where(food_id: food.id).sum('quantity')
      inventory_foods_quantity = InventoryFood.where(inventory_id: params[:inventory_id]).joins(:food).where(food_id: food.id).sum('quantity')

      missing_food = recipe_foods_quantity - inventory_foods_quantity

      next unless missing_food.positive?

      value = missing_food * food.price
      # obj = {'name' => "#{food.name}", 'quantity '=> "#{missing_food}", 'value' = "#{value}"}
      obj = { id: food.id, name: food.name, quantity: missing_food, value: }
      @shopping_list << obj
      @total << obj[:value]
    end
  end
end
