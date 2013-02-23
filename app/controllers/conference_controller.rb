class ConferenceController < ApplicationController

  def index
    @conferences = Conference.all

    conf = @conferences[0]
    addr = conf.location.address.address1 + ", " + conf.location.address.city + ", "  + conf.location.address.state

    geo_result = Geokit::Geocoders::GoogleGeocoder.geocode addr

    conf.location.latitude = geo_result.ll.split(",").first
    conf.location.longitude = geo_result.ll.split(",").last

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: conf }
    end
  end

  def conf_with_sessions
    #@resp = ServiceResponse.new

    @resp = {}

    conf = Conference.all.first
    sessions = Session.all.asc(:start)

    @resp["conference_with_sessions"] = conf
    @resp["conference_with_sessions"]["sessions"] = sessions


    respond_to do |format|
      format.json { render json: @resp }
    end
  end

end
