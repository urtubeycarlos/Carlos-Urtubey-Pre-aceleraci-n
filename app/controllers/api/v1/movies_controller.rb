module Api
  module V1
    class MoviesController < ApplicationController
      before_action :set_movie, only: [:show, :update, :destroy]

      def index
        params = movie_query_params
        if params.keys.length > 0
          if params.keys.include? "genre"
            params["genre_id"] = params.delete "genre"
          end
          if params.keys.include? "name"
            params["title"] = params.delete "name"
          end
          @movies = Movie.filter_query_params(params)
        else
          @movies = Movie.all()
        end
      end
    
      def show
      end
    
      def create
        @movie = Movie.new(movie_params)
        @movie.save
      end
    
      def update
        @movie.update(movie_params)
      end
    
      def destroy
        @movie.destroy
      end

      private
      def movie_params
        params.permit(:title, :image, :calification, :genre_id)
      end

      def movie_query_params
        params.permit(:name, :genre, :order)
      end

      def set_movie
        @movie = Movie.find_by_id(params[:id])
      end
    end    
  end
end