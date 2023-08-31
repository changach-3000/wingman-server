Rails.application.routes.draw do
  resources :farmers
 

  post "/login", to:"session#login"
  delete "/logout", to:"session#logout"
  get "/current_user", to:"users#current_user"


  
  resources :users, only: [:index, :show, :create]

 
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
