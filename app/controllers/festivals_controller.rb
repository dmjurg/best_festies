class FestivalsController < ApplicationController
  def index
    @festivals = Festival.all
    respond_to do |format|
        format.html { render :index }
        format.json { render status: 200, json: @festivals.to_json }
    end
  end

  def show
    @festival = Festival.find(params[:id])
    render status: 200, json: @festival.to_json
  end

end
