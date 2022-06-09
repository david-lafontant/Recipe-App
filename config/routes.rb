Rails.application.routes.draw do
  get 'foods/index'
  get 'foods/show'
  get 'foods/new'
  devise_for :users
  # get 'users/index'
  # get 'users/show'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  resources :users , only: %i[index show]
  # Defines the root path route ("/")
  root "users#index"
end
