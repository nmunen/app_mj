class Api::HanchansController < ApplicationController

  skip_before_filter :verify_authenticity_token

  def create
    json_request = JSON.parse(request.body.read)

    p "json_request => #{json_request}"

    if !json_request.blank?
      hanchan = Hanchan.new(json_request)
      hanchan.save
    end

    render :json => hanchan

  end
end
