Rails.application.routes.draw do
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
