Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      # version
      get "/version", to: "version#index"
      # users
      get "/users", to: "user#index"
      get "/users/:id", to: "user#show"
      post "/users", to: "user#create"
      patch "/users/:id", to: "user#update"
    end
  end
end
