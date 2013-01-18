class PdfController < ApplicationController

  def index

    @respArr = Array.new

    @respArr.push({:name => "American Legacy", :url => "http://localhost:3000/AL-APTDS-BRC280_Z02_VIEW.pdf"})
    @respArr.push({:name => "CP Income Solutions", :url => "http://localhost:3000/CP-APTSN-BRC281_Z03_VIEW.pdf"})
    @respArr.push({:name => "CP Solutions", :url => "http://localhost:3000/CP-APTSP-BRC001_Z03_VIEW.pdf"})
    @respArr.push({:name => "CP Client Guide", :url => "http://localhost:3000/CP-INC-BRC001_Z03_VIEW.pdf"})

    respond_to do |format|
      format.json { render json: @respArr }
    end

  end

end