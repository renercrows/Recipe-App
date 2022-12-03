class CreateRecipes < ActiveRecord::Migration[7.0]
  def change
    create_table :recipes do |t|
      t.string :name, null: false
      t.float :preparation_time, null: false
      t.float :cooking_time, null: false
      t.string :description, null: false
      t.boolean :public, null: false, default: false

      t.timestamps
    end
  end
end
