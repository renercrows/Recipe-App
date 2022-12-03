class AddRecipeFoodQuantity < ActiveRecord::Migration[7.0]
  def change
    change_column :recipe_foods, :quantity, 'integer USING CAST(quantity AS integer)'
  end
end
