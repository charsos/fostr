Rails.application.routes.draw do
  devise_for :users
  root to: "home#index"
  resources :pets
  resources :shelters
  # resources :users, only: [:show, :new, :create]
  delete 'pets/:id', to: 'pets#destroy', as: 'delete_pet'
  delete 'shelters/:id', to: 'shelters#destroy', as: 'delete_shelter'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
