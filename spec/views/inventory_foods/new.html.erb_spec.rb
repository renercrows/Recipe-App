require 'rails_helper'

RSpec.describe 'inventory_foods/new', type: :view do
  before(:each) do
    assign(:inventory_food, InventoryFood.new(
                              quantity: 1
                            ))
  end

  it 'renders new inventory_food form' do
    render

    assert_select 'form[action=?][method=?]', inventory_foods_path, 'post' do
      assert_select 'input[name=?]', 'inventory_food[quantity]'
    end
  end
end
