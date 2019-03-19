Rails.application.routes.draw do
  get 'fosters/create'
  devise_for :users
  root to: "home#index"
  resources :pets, only: [:index, :show, :new, :create, :update, :edit] do
    resources :fosters, only: [:create]
  end
  resources :shelters, only: [:index, :show, :new, :create]
  # resources :users, only: [:show, :new, :create]


  #root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
