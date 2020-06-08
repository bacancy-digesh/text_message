require 'opentok'
class VideoController < ApplicationController

  before_action :set_params
  def landing
  end

  def set_params
    @api_key = Figaro.env.OPENTOK_API_KEY
    @api_secret = Figaro.env.OPENTOK_API_SECRET
    @session_id = Session.create_or_load_session_id
    @moderator_name = Figaro.env.name
    @name = current_user.email
    @token = Session.create_token(@name, @moderator_name, @session_id)
  end

  def index
  end

  def screenshare
  end

  def name
    @name = current_user.email
    redirect_to party_url(name: @name)
  end

  def chat
  end
end
