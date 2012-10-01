Shouter::Application.routes.draw do
  root to: "welcome#show"
  resource :dashboard, only: [:show]
  resources :shouts, only: [:create]
end
