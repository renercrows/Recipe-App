Rails.application.routes.default_url_options[:host] = "XXX"

Rails.application.routes.draw do
  devise_for :users
  resources :recipe_foods
  resources :recipes
  resources :foods
  resources :public_recipes
  resources :general_shopping_list
  get 'shopping_list', to: 'foods#shopping_list'
  # resources :users
  root 'pages#home'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
