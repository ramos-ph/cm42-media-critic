class GamesController < ApplicationController
  def index
    @games = Game.all

    render json: { data: @games }, include: [:platforms, :developers, :publishers]
  end
end
