class GamesController < ApplicationController
  def index
    @games = Game.all

    render json: { data: @games }
  end

  def create
    @game = Game.new(game_params)

    if @game.save
      render json: { data: @game }, status: :created
    else
      render json: { error: "Could not create a game" }
    end
  end

  def show
    @game = Game.find(params[:id])

    render json: { data: @game }, include: [:platforms, :developers, :publishers]
  end

  private

  def game_params
    params
      .require(:game)
      .permit(:title, :description, :year)
  end
end
