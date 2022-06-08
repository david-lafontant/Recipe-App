Rails.application.routes.draw do
  devise_for :users
  # get 'users/index'
  # get 'users/show'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  resources :users , only: %i[index show]
  # Defines the root path route ("/")
  root "users#index"
end
