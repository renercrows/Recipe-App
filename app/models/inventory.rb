class Inventory < ApplicationRecord
  belongs_to :user
  has_many :inventory_foods, dependent: :destroy
  has_many :foods, through: :inventory_foods, dependent: :destroy

  validates :name, presence: true, length: { maximum: 200 }
end
