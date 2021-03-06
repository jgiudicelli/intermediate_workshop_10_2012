Shouter::Application.routes.draw do
  root to: "welcome#show"
  resource :dashboard, only: [:show]
  resources :text_shouts, only: [:create]
  resources :photo_shouts, only: [:create]
  resources :video_shouts, only: [:create]
  resources :users, only: [:show] do
    post "follow" => "following_relationships#create"
  end

  get "search" => "shout_searches#show"
end
