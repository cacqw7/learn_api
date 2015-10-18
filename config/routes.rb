Rails.application.routes.draw do
  resources :links
  resources :users

  get "/session", to: "session#index"
  get "/session/fetch", to: "session#fetch"
  post "/session/logout", to: "session#logout"

end
