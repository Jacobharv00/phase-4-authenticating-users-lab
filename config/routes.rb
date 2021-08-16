Rails.application.routes.draw do
  resources :articles, only: [:index, :show]
  # resources :sessions, only: [:create, :destroy]
  # wouldn't it be nice if the tests let me use line 3?
  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"
  get "/me", to: "users#show"
end
