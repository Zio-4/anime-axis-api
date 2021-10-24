class AnimeListsController < ApplicationController
    def create
        if @current_user
            AnimeLists.create!(user_id: @current_user.id)
        end
    end


end
