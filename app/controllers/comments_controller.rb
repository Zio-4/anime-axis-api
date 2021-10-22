class CommentsController < ApplicationController
    skip_before_action :authorize, only: [:show]

    def show
        comments = Comment.where({forum_post_id: params[:id]})
        render json: comments, status: :ok
    end

    def create
        comment = Comment.create!(comment_params)
        render json: comment, status: :created
    end

    private

    def comment_params
        params.permit(:content, :user_id, :forum_post_id)
    end
end
