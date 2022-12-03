class InventoryFood < ApplicationRecord
  belongs_to :inventory, optional: true
  belongs_to :food

  validates :quantity, presence: true, length: { maximum: 200 }
  validates :food_id, presence: true
  validates :inventory_id, presence: true
end
