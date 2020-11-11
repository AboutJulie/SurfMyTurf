Rails.application.routes.draw do
  resources :articles
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users, only: [:signup, :signin]
  resources :surfboards do
    resources :bookings, only:[:new, :create, :edit, :update]
  end
end
