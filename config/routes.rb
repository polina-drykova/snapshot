Rails.application.routes.draw do
  get 'reviews/index'
  get 'reviews/new'
  get 'reviews/create'
  get 'reviews/show'
  get 'reviews/edit'
  get 'reviews/update'
  get 'reviews/destroy'
  get 'bookings/index'
  get 'bookings/new'
  get 'bookings/create'
  get 'bookings/show'
  get 'bookings/edit'
  get 'bookings/update'
  get 'bookings/destroy'
  get 'cameras/index'
  get 'cameras/new'
  get 'cameras/create'
  get 'cameras/show'
  get 'cameras/edit'
  get 'cameras/update'
  get 'cameras/destroy'
  devise_for :users
  root to: 'pages#home'

  resources :cameras do
    resources :bookings
  end

  resources :bookings, only: [] do
    resources :reviews, only: [:new, :create]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
