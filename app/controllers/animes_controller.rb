class AnimesController < ApplicationController
    
    def create
        anime = Anime.create!(anime_params)
        render json: anime, status: :created
    end

    private

    def anime_params
        params.permit(:title, :id, :image_url )
    end
end
