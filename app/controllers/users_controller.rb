class UsersController < ApplicationController
    skip_before_action :authorize, only: [:create]
    
    def create
        user = User.create!(user_params)
        session[:user_id] = user.id
        render json: user, status: :created
    end

    def show
        render json: @current_user, include: :animes
    end

    # def update
    #     user = User.find_by(id: params[:id])
    #     if user.update(user_params)
    #         render json: user, status: :ok
    #     else
    #         render json: user.errors, status: :unprocessable_entity
    #     end
    # end

    # def update
    #     user = User.find_by(id: params[:id])
    #     if user
    #         user.update!(user_params)
    #         render json: user, status: :ok
    #     else
    #         render json: user.errors, status: :unprocessable_entity
    #     end
    # end

    # def update
    #     if @current_user.update!(user_params)
    #         render json: user, status: :ok
    #     else
    #         logger.debug "*****test******"
    #         render json: @current_user.errors, status: :unprocessable_entity
    #     end
    # end

    def update
        @current_user.update!(user_params)
        render json: @current_user, status: :ok
    end

    private

    def user_params
        # removing require
        params.permit(:username, :password, :password_confirmation, :bio, :avatar, :email)
    end
end
