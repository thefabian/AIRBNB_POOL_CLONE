Rails.application.routes.draw do

  devise_for :users, controllers: { registrations: "registrations" }
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users, only: [ :show ]
  resources :pools do
    resources :bookings, only: [ :new, :create, :show ]
    resources :reviews, only: [ :new, :create, :show ]
  end
  resources :bookings, only: [ :destroy ]
end
