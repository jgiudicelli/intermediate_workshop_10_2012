Shouter::Application.routes.draw do
  root to: "welcome#show"
  resource :dashboard, only: [:show]
  resources :text_shouts, only: [:create]
  resources :photo_shouts, only: [:create]
  resources :video_shouts, only: [:create]
  resources :users, only: [:show]
end
