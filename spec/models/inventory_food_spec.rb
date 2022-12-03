require 'rails_helper'

RSpec.describe InventoryFood, type: :model do
  before(:each) do
    @user = User.create(name: 'NTIHINDUKA ALPHA', email: 'ntihindukaalpha@yahoo.com', password: '1234567890', password_confirmation: '1234567890')
    @food = Food.create(name: 'food', measurement_unit: 'g', price: 10, user_id: @user.id)
    @inventory = Inventory.create(name: 'inventory 1', user_id: @user.id)
    @inventory_food = InventoryFood.create(quantity: 5, inventory_id: @inventory.id, food_id: @food.id)
  end

  it 'Inventoryfood should have valid attributes' do
    expect(@inventory_food.quantity).to eq(5)
  end

  it 'Inventoryfood should have valid attributes' do
    expect(@inventory_food).to be_valid
  end

  it 'user for inventory food should be valid' do
    expect(@user).to be_valid
  end
end
