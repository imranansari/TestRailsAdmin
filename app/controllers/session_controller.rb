class SessionController < ApplicationController

  def index
    @sessions = Session.all

    respond_to do |format|
      format.json { render json: @sessions }
    end
  end

end
