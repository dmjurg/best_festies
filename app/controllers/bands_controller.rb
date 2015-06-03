class BandsController < ApplicationController
  def index
    @bands = Band.all
    respond_to do |format|
        format.html { render :index }
        format.json { render status: 200, json: @bands.to_json }
    end
  end

  def show
    @band = Band.find(params[:id])
    render status: 200, json: @band.to_json
  end

end
