require 'rails_helper'

RSpec.describe InventoryFoodsController, type: :routing do
  describe 'routing' do
    it 'routes to #index' do
      expect(get: '/inventory_foods').to route_to('inventory_foods#index')
    end

    it 'routes to #new' do
      expect(get: '/inventory_foods/new').to route_to('inventory_foods#new')
    end

    it 'routes to #show' do
      expect(get: '/inventory_foods/1').to route_to('inventory_foods#show', id: '1')
    end

    it 'routes to #edit' do
      expect(get: '/inventory_foods/1/edit').to route_to('inventory_foods#edit', id: '1')
    end

    it 'routes to #create' do
      expect(post: '/inventory_foods').to route_to('inventory_foods#create')
    end

    it 'routes to #update via PUT' do
      expect(put: '/inventory_foods/1').to route_to('inventory_foods#update', id: '1')
    end

    it 'routes to #update via PATCH' do
      expect(patch: '/inventory_foods/1').to route_to('inventory_foods#update', id: '1')
    end

    it 'routes to #destroy' do
      expect(delete: '/inventory_foods/1').to route_to('inventory_foods#destroy', id: '1')
    end
  end
end
