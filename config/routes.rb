Rails.application.routes.draw do
  post 'calendar/create'

  resources :reservations
  resources :contacts

  resources :home, only: :index do
    collection { get :photos }
  end

  root to: 'home#index'
end
