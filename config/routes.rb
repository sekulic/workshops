Rails.application.routes.draw do
  resources :categories do
    resources :products do
      resources :reviews
    end
  end
  devise_for :users
  root 'categories#index'
  get 'profile', to: 'static_pages#profile' 
  get 'products', to: 'products#index'   
end
