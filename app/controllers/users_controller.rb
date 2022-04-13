class UsersController < ApplicationController
    skip_before_action :authorize, only: [:create]
    
    def create
        # byebug
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

    def update
        user = User.find_by(id: params[:id])
        if user
            # Adding exception raising
            user.update!(user_params)
            render json: user, status: :ok
        else
            render json: user.errors, status: :unprocessable_entity
        end
    end

    private

    def user_params
        # added require
        params.require(:user).permit(:username, :password, :password_confirmation, :bio, :avatar, :email)
    end
end
