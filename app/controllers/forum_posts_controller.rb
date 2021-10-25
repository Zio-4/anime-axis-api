class ForumPostsController < ApplicationController
    skip_before_action :authorize, only: [:anime_discussion_posts, :manga_discussion_posts, :anime_forum_posts, :manga_forum_posts, :general_forum_posts, :show]

    def create
       forum_post = ForumPost.create!(forum_post_params)
       render json: forum_post, status: :created
    end

    # Create custom methods for forum posts of each of forum (Anime, Manga, General) for easier rendering on front end

    def anime_forum_posts
        posts = ForumPost.where("forum_id = 1").limit(20)
        render json: posts, include: [:comment, :user]
    end

    def manga_forum_posts
        posts = ForumPost.where("forum_id = 2").limit(20)
        render json: posts
    end

    def general_forum_posts
        posts = ForumPost.where("forum_id = 3").limit(20)
        render json: posts
    end

    def show
        forum_post = ForumPost.find(params[:id])
        render json: forum_post, status: :ok
    end

    private

    def forum_post_params
        params.permit(:title, :content, :user_id, :forum_id, :anime_id, :manga_id)
    end
end
