module Api
  module V1
    class SeriesController < ApplicationController
      before_action :set_serie, only: [:show, :update, :destroy]

      def index
        params = serie_params_query
        if params.keys.length > 0
          if params.keys.include? "genre"
            params["genre_id"] = params.delete "genre"
          end
          if params.keys.include? "name"
            params["title"] = params.delete "name"
          end
          @series = Serie.filter_query_params(params)
        else
          @series = Serie.all()
        end
      end
    
      def show
      end
    
      def create
        @serie = Serie.new(serie_params)
        @serie.save
      end
    
      def update
        @serie.update(serie_params)
      end
    
      def destroy
        @serie.destroy
      end
      
      private
      def serie_params
        params.permit(:title, :image, :calification, :genre_id)
      end

      def serie_query_params
        params.permit(:name, :genre, :order)
      end

      def set_serie
        @serie = Serie.find_by_id(params[:id])
      end
    end    
  end
end