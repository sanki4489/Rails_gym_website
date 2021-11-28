Rails.application.routes.draw do
  resources :instructors
  get 'program/index'
  get 'program/new'
  get 'program/show'
  root to: 'home#index'
  get 'contact', to: 'home#contact'
  get 'about', to: 'home#about'
  get 'plans', to: 'home#plans'
  resources :users
  resources :clients
  resources :programs

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
