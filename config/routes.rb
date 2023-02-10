Rails.application.routes.draw do
  devise_for :users

  root to: "home#index"

  get "/order/details/" , to: "order#order_details"
  
  resources :home do
    resources :comments
  end

  resources :comments do
    resources :comments
  end

  post '/comments/:id', to: 'comments#create_reply'

  #resources :home, only: [:index, :show]
  resources :order, only: [:index, :show, :create]

  resources :basket do
    collection do
      post '/:id', to: 'basket#create', as: 'basket'
      delete '/:id', to: 'basket#destroy', as: 'basket_delete'
    end
  end

  resources :profile, only: [:index, :show, :update]
  put "/profile", to: "profile#update"

end
