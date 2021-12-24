Rails.application.routes.draw do


  get "upload" => "images#new", :as => "upload"
  get 'images/create'
  get 'images/delete'
  get 'images/index'
  get 'categories/new'
  get 'categories/create'
  get 'categories/dit'
  get 'categories/update'
  get 'categories/delete'
  get 'categories/show'


  get "signup", to: "users#new", as: 'signup'
  get "login", to: "sessions#new", as: 'login'
  post "login", to: "sessions#create"
  post "logout", to: "sessions#destroy"
  delete "logout", to: "sessions#destroy"
  resources :users, except: [:new]



  resources :images, :categories
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  root 'images#index'
end
