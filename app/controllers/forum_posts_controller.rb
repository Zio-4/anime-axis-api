class ForumPostsController < ApplicationController
    def create
       forum_post = ForumPost.create!(forum_post_params)
       render json: forum_post, status: :created
    end

    private

    def forum_post_params
        params.permit(:title, :content, :user_id, :forum_id, :anime_id, :manga_id)
    end
end
