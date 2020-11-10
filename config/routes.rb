Rails.application.routes.draw do
  get 'bookings/create'
  get 'bookings/new'
  get 'bookings/update'
  get 'bookings/edit'
  get 'surfboards/index'
  get 'surfboards/show'
  get 'surfboards/create'
  get 'surfboards/update'
  get 'surfboards/new'
  get 'surfboards/edit'
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users, only: [:signup, :signin]
  resources :surfboards
end
