Rails.application.routes.draw do
  resources :comments
  resources :forum_posts
  resources :forums
  resources :manga_lists
  resources :anime_lists
  resources :mangas
  resources :animes
  resources :users

  post "/login", to: "sessions#create"
  get "/user", to: "users#show"
  delete "/logout", to: "sessions#destroy"
  post "/signup", to: "users#create"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
