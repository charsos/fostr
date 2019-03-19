Rails.application.routes.draw do
  resources :pets, only: [:index, :show, :new, :create, :update, :edit]
  resources :shelters, only: [:index, :show, :new, :create]
  # resources :users, only: [:show, :new, :create]


  #root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
