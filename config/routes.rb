Rails.application.routes.draw do
  resources :comments

  get "/forum_posts/anime", to: "forum_posts#anime_forum_posts"
  get "/forum_posts/manga", to: "forum_posts#manga_forum_posts"
  get "/forum_posts/general", to: "forum_posts#general_forum_posts"
  resources :forum_posts, only: [:create, :show]

  resources :mangas
  resources :animes
  resources :users

  post "/login", to: "sessions#create"
  get "/user", to: "users#show"
  delete "/logout", to: "sessions#destroy"
  post "/signup", to: "users#create"
  get "*path", to: "fallback#index", constraints: ->(req) { !req.xhr? && req.format.html? }
end

