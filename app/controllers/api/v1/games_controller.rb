module Api
    module V1
      class GamesController < ApplicationController

        def index
          @game = Game.all
          render json: @game
        end
        
        def show
          begin
            @game = Game.find(params[:id])
            render json: @game
          rescue ActiveRecord::RecordNotFound => e
            render json: {error: "ID not found"}
          end
        end

        def new
        end

        def create
          @game = Game.new(game_params)
          @game.save
          render json: @game, status: 201
        end

        private
        
        def game_params
          params.permit(:home, :away, :home_score, :away_score, :championship, :place, :date, :time)
        end
    end
  end
end