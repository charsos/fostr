Rails.application.routes.draw do
  devise_for :users
  root to: "home#index"
  resources :pets
  resources :shelters, only: [:index, :show, :new, :create]
  # resources :users, only: [:show, :new, :create]
  # delete 'pets/:id', to: 'pets#destroy', as: 'delete_pet'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
