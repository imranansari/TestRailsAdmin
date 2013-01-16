class ConferenceController < ApplicationController

  def index
    @conference = Conference.first

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @conference }
    end
  end

end
