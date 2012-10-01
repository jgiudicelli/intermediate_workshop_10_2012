Shouter::Application.routes.draw do
  root to: "welcome#show"
  resource :dashboard, only: [:show]
  resources :text_shouts, only: [:create]
end
