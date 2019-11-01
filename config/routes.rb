Rails.application.routes.draw do
  get 'cameraphotos/create'
  devise_for :users
  root to: 'pages#home'
  get '/error', to: 'pages#error'
  get 'dashboard', to: 'pages#dashboard', as: :dashboard
  get 'profile', to: 'pages#profile', as: :profile

  resources :cameras do
    resources :bookings
  end

  resources :bookings, only: [] do
    resources :reviews, only: [:new, :create]
  end

  get '/accept/:id', to: 'pages#accept_booking', as: :accept
  get '/refuse/:id', to: 'pages#refuse_booking', as: :refuse
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
