Rails.application.routes.draw do

  scope '/api' do
    resources :comments

    get "/forum_posts/anime", to: "forum_posts#anime_forum_posts"
    get "/forum_posts/manga", to: "forum_posts#manga_forum_posts"
    get "/forum_posts/general", to: "forum_posts#general_forum_posts"
    resources :forum_posts, only: [:create, :show]

    resources :mangas
    resources :animes
    resources :users
  end

  post "/login", to: "sessions#create"
  get "/user", to: "users#show"
  delete "/logout", to: "sessions#destroy"
  post "/signup", to: "users#create"
  
  if Rails.env == "production"
      get '*path', to: "application#fallback_index_html", constraints: ->(request) do
        !request.xhr? && request.format.html?
      end
  end
end

