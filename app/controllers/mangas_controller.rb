class MangasController < ApplicationController

    def create
        if Manga.find_by(id: params[:id]) && @current_user.mangas.find { |m| m.id == params[:id]}
            render json: {message: "This manga is already in your list"}
        elsif Manga.find_by(id: params[:id])
            @current_user.mangas << Manga.find_by(id: params[:id])
            render json: {message: "this manga has been added to your list"}
        else
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
