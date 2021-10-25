class MangasController < ApplicationController

    def create
        if Manga.find_by(id: params[:id])
            # If an anime already exists in the Anime table, only add it to the users anime list unless it is already in the users list
            @current_user.mangas << Manga.find_by(id: params[:id]) unless @current_user.mangas.each { |m| m.id == params[:id]}
        else
            # If an anime is not in the Anime table, create it and add it to the users anime list 
            manga = Manga.create!(manga_params)
            @current_user.mangas << manga
            render json: manga, status: :created
        end
    end

    private

    def manga_params
        params.permit(:title, :id, :image_url, :score)
    end
end
