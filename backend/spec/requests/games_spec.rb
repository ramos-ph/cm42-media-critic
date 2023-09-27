require "rails_helper"

RSpec.describe GamesController, type: :request do
  describe "#index" do
    context "when there are no games" do
      it "responds with an empty array"
    end

    context "when there are games" do
      it "responds with an array of games"
    end
  end

  describe "#show" do
    context "when game is not found" do
      it "responds with 404"
    end

    context "when game is found" do
      it "responds with the game"
    end
  end

  describe "#create" do
    context "when create params are valid" do
      it "responds with 201"
    end
  end
end
