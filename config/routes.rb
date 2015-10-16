Rails.application.routes.draw do
  resources :links
  resources :users

  get "/session", to: "session#index"
  get "/session/fetch", to: "session#fetch"

end
