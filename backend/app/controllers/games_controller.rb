class GamesController < ApplicationController
  rescue_from ActiveRecord::RecordNotFound, with: :game_not_found

  def index
    @games = Game.all

    render json: @games
  end

  def create
    @game = Game.new(game_params)

    if @game.save
      render json: @game, status: :created
    else
      render json: { error: "Could not create a game" }
    end
  end

  def show
    @game = Game.find(params[:id])

    render json: @game, include: [:platforms, :developers, :publishers]
  end

  private

  def game_params
    params
      .require(:game)
      .permit(:title, :description, :year)
  end

  def game_not_found
    render json: { error: "Game not found" }, status: :not_found
  end
end
