require 'rails_helper'

RSpec.describe RecipeFoodsController, type: :routing do
  describe 'routing' do
    it 'routes to #index' do
      expect(get: '/recipe_foods').to route_to('recipe_foods#index')
    end

    it 'routes to #new' do
      expect(get: '/recipe_foods/new').to route_to('recipe_foods#new')
    end

    it 'routes to #show' do
      expect(get: '/recipe_foods/1').to route_to('recipe_foods#show', id: '1')
    end

    it 'routes to #edit' do
      expect(get: '/recipe_foods/1/edit').to route_to('recipe_foods#edit', id: '1')
    end

    it 'routes to #create' do
      expect(post: '/recipe_foods').to route_to('recipe_foods#create')
    end

    it 'routes to #update via PUT' do
      expect(put: '/recipe_foods/1').to route_to('recipe_foods#update', id: '1')
    end

    it 'routes to #update via PATCH' do
      expect(patch: '/recipe_foods/1').to route_to('recipe_foods#update', id: '1')
    end

    it 'routes to #destroy' do
      expect(delete: '/recipe_foods/1').to route_to('recipe_foods#destroy', id: '1')
    end
  end
end
