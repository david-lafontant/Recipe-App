Rails.application.routes.draw do
  get 'recipe_foods/new'
  get 'shopping_list/index'
  get 'recipes/index'
  get 'recipes/show'
  get 'recipes/new'

  devise_for :users
  # get 'users/index'
  # get 'users/show'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  devise_scope  :user do
    get 'users/sign_out' => 'devise/sessions#destroy'
  end
resources :users do 
  resources :foods, only: [:index, :create, :new, :destroy]
end

  # Defines the root path route ("/")
  root "users#index"
end
