Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get 'dashboard', to: 'pages#dashboard'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :bicycles, only: [:index, :show, :new, :create, :edit] do
    resources :bookings, only: [:create]
  end
end
