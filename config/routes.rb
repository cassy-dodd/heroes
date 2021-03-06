Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :heros, only: [:new, :create, :show, :index, :destroy] do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
    resources :bookings, only: [:new, :create, :show]
    resources :reviews, only: [:create]
  end
  get "profile", to: "pages#profile"
end
