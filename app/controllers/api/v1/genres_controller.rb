module Api
  module V1
    class GenresController < ApplicationController
      before_action :set_genre, only: [:show, :update, :destroy]

      def index
        @genres = Genre.all
      end
    
      def show
      end
    
      def create
        @genre = Genre.new(genre_params)
        @genre.save
      end
    
      def update
        @genre.update(genre_params)
      end
    
      def destroy
        @genre.destroy
      end

      private
      def genre_params
        params.permit(:name, :image)
      end

      def set_genre
        @genre = Genre.find_by_id(params[:id])
      end
    end
  end
end

