class Food < ApplicationRecord
  has_many :inventoryfoods
  has_many :inventory, through: :inventory_foods
  has_many :recipe_foods
  has_many :recipes, through: :recipe_foods

  validates :name, presence: true
end
