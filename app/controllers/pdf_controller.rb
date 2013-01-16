class PdfController < ApplicationController

  def index

    @respArr = Array.new

    @respArr.push({:name => "60 Reasons", :url => "http://localhost:3000/60ReasonsWireFrame.pdf"})

    respond_to do |format|
      format.json { render json: @respArr }
    end

  end

end