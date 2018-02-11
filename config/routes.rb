Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  get '/menu', to: 'food_items#index', as: 'menu'
  resources :food_items, except: [:show, :index]

end
