class Api::TipsController < ApplicationController
  
  skip_before_filter :verify_authenticity_token

  def create
    json_request = JSON.parse(request.body.read)

    p "json_request => #{json_request}"

    if !json_request.blank?
      tip = Tip.new(json_request)
      tip.save
    end

    render :json => tip

  end
end
