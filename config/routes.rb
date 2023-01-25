Rails.application.routes.draw do
  devise_for :users

  root to: "home#index"
  resources :home, only: [:index, :show]
  resources :order, only: [:index, :show]

  resources :basket do
    collection do
      post '/:id', to: 'basket#create', as: 'basket'
      delete '/:id', to: 'basket#destroy', as: 'basket_delete'
    end
  end

  resources :profile, only: [:index, :show, :update]
  put "/profile", to: "profile#update"

end
