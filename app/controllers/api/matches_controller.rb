class Api::MatchesController < ApplicationController
  def index
    @matches = Match.all
  end

  def show
    @matches = Match.where(match_id: params[:match_id])
  end
end
