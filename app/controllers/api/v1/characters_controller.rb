module Api
    module V1
        class CharactersController < ApplicationController
            before_action :set_character, only: [:show, :update, :destroy]
            
            def index
                params = character_query_params
                if params.keys.length > 0
                    @characters = Character.filter_query_params(params)
                else
                    @characters = Character.all()
                end
            end

            def show
            end

            def create
                @character = Character.new(character_params)
                @character.save
            end

            def update
                @character.update(character_params)
            end

            def destroy
                @character.destroy
            end

            private
            def character_params
                params.permit(:name, :history, :image, :age, :weight, movie_ids: [], serie_ids: [])
            end

            def character_query_params
                params.permit(:name, :age, :movies)
            end

            def set_character
                @character = Character.find_by_id(params[:id])
            end
        end
    end
end

