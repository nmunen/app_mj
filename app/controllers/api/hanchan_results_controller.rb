class Api::HanchanResultsController < ApplicationController
  def index
    @hanchan_results = HanchanResult.where(match_id: params[:match_id])
  end

  def show
    @hanchan_results = HanchanResult.where(match_id: params[:match_id], hanchan_id: params[:hanchan_id])
  end
end
