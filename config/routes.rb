Rails.application.routes.draw do
  resources :markers
  resources :categories
  resources :archetypes
  get "api/category/:id", to: "categories#api"
  get 'home/index'
  root 'home#index'
end
