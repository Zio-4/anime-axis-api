class AnimesController < ApplicationController

    def create
        if Anime.find_by(id: params[:id]) && @current_user.animes.find { |a| a.id == params[:id]}
            # If an anime already exists in the anime table AND it is in the user's anime list
            render json: {message: "This anime is already in your list"}
        elsif Anime.find_by(id: params[:id])
            # If an anime already exists in the anime table but not in the users list, add it to their list
            @current_user.animes << Anime.find_by(id: params[:id])
            render json: {message: "Anime has been added to your list"}
            #{ |a| a.id == params[:id]}
        else
            # If an anime is not in the anime table, create it and add it to the users anime list 
            anime = Anime.create!(anime_params)
            @current_user.animes << anime
            render json: anime, status: :created
        end
    end

    private

    def anime_params
        params.permit(:title, :id, :image_url, :score)
    end
end
