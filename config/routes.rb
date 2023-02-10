Rails.application.routes.draw do
  scope :api do
    # users
    get "/users", to: "user#index"
    get "/users/:id", to: "user#show"
    post "/users", to: "user#create"
    patch "/users/:id", to: "user#update"
  end
end
