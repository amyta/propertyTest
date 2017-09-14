Rails.application.routes.draw do
  namespace :v1 do
    resources :contacts
    resources :sessions, only: [:create, :destroy]
    resources :properties
  end
  
  # devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end