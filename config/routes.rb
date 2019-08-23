Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "shoes#index"
  resources :brands
  resources :sizes
  resources :shoes
  resources :owners
  resources :blogs

  resources :chatusers, only: %i[index show]

end