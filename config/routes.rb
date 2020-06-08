Rails.application.routes.draw do
  get '/party', to: 'video#index'
  post '/name', to: 'video#name'
  devise_for :users
  root 'home#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  resources :conversations, only: [:create] do
  	member do
      post :close
    end
    resources :messages, only: [:create]
  end
  
end
