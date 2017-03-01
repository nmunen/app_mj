class Api::PlayersController < ApplicationController

  skip_before_filter :verify_authenticity_token

  def index
    @players = Player.all
  end

  def show
    @player = Player.find(params[:id])
  end

  def create
    json_request = JSON.parse(request.body.read)

    p "json_request => #{json_request}"

    if !json_request.blank?
      player = Player.new(json_request)
      player.save
    end

    render :json => player

  end

  def update
    json_request = JSON.parse(request.body.read)

    p "json_request => #{json_request}"

    if !json_request.blank?
      player = Player.find(params[:id]).update(json_request)
    end

    head :no_content

  end
  
  def destroy
    Player.find(params[:id]).destroy 
    head :no_content
  end

end
