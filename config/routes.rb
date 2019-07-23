Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :users, only: [:index, :show]
    end
  end

resources :pages
resources :user_pages

  post "/auth/create", to: "auth#create"
  get "/auth/show", to: "auth#show"

  post "/api/v1/users/signup", to: "api/v1/users#create"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
