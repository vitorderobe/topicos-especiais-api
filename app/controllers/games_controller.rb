module Api
    module V1
      class GamesController < ApplicationController

        def index
          @game = Game.all
          render json: @game
        end
        
        def show
          @game = Game.find(params[:id])
          render json: @game
        end

        def new
        end

        def create
          @game = Game.new(game_params)
          p @game 
          @game.save
          render json: @game
        end

        private
        
        def game_params
          params.permit(:home, :away, :home_score, :away_score, :championship, :place, :date, :time)
        end
    end
  end
end
