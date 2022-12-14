Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root to: "home#index"
  resources :home, only: [:index, :show]
  resources :basket, only: [:index]

  get '/order/:id', to: 'order#index', as: 'order'
  post '/basket', to: "basket#index", as: 'basket'

end
