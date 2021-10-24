class AnimesController < ApplicationController

    def create
        if Anime.find_by(id: params[:id])
            # If an anime already exists in the Anime table, only add it to the users anime list unless it is already in the users list
            @current_user.animes << Anime.find_by(id: params[:id]) unless @current_user.animes.each { |a| a.id == params[:id]}
        else
            # If an anime is not in the Anime table, create it and add it to the users anime list 
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
