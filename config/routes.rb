Rails.application.routes.draw do

  resources :darons do
    resources :bookings, only: [:new, :index, :create, :update]
  end
  devise_for :users
  resources :dashboard, only: [:show]
  get '/profile', to: 'profiles#profile', as: 'profile'
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
