Rails.application.routes.draw do
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/login', to: 'sessions#destory'

  namespace :admin do
    resources :users
  end

  root to: 'products#index'
  resources :products
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
