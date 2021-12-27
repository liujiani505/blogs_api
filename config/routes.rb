Rails.application.routes.draw do
  root "posts#index"
  resources :posts do
    resources :comments
  end
  resource :users, only: [:create]
  post "/login", to: "users#login"
  get "/auto_login", to: "users#auto_login"
end

