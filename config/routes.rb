Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root to: "home#index"
  resources :home, only: [:index, :show]
  resources :order, only: [:index, :show]

  resources :basket do
    collection do
      post '/:id', to: 'basket#create', as: 'basket'
      delete '/:id', to: 'basket#destroy', as: 'basket_delete'
    end
  end

end
