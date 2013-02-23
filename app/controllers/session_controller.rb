class SessionController < ApplicationController

  def index
    @sessions = Session.all
    #@sessions = Session.all.distinct(:start)

    respond_to do |format|
      format.json { render json: @sessions}
    end
  end

  def resp
    #@resp = ServiceResponse.new

    @resp = {}

    conf = Conference.all.first
    sessions = Session.all
    sessions.each { |session|
      @resp["conf"] = conf
      @resp["conf"]["sessions"] = session
      @resp["conf"]["sessions"]["participant"] = Participant.where(:_id => session["participant_ids"][0]).first
    }


    respond_to do |format|
      format.json { render json: @resp }
    end
  end

end

