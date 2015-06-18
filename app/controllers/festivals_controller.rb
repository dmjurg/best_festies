class FestivalsController < ApplicationController
  def index
    @festivals = Festival.all
    respond_to do |format|
        format.html { render :index }
        format.json { render status: 200, json: @festivals.to_json(include: :bands) }
    end
  end

  def show
    @festival = Festival.find(params[:id])
    render status: 200, json: @festival.to_json
  end

  def new
    @festival = Festival.new
    @bands = Band.all
  end

  def create
    @festival = Festival.new(festival_params)
      if @festival.save
        redirect_to(festivals_path)
      else
        render(:new)
      end
    @bands = Band.all
  end

  private

  def festival_params
    params.require(:festival).permit(:name, :location, :start_date, :end_date, band_ids: [])
  end

end
