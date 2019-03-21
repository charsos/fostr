Rails.application.routes.draw do
  get 'fosters/create'
  devise_for :users
  root to: "pets#index"
  resources :shelters
  resources :pets, only: [:index, :show, :new, :create, :update, :edit] do
    resources :fosters, only: [:new, :create]
    end
  # resources :users, only: [:show, :new, :create]

  delete 'pets/:id', to: 'pets#destroy', as: 'delete_pet'
  delete 'shelters/:id', to: 'shelters#destroy', as: 'delete_shelter'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
