class Food < ApplicationRecord
  has_many :recipe_foods
  has_many :recipes, through: :recipe_foods

  validates :name, presence: true
end
