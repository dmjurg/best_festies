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

  end

  def create
    @band = Band.new(band_params)
      if @band.save
        redirect_to(bands_path)
      else
        render(:new)
      end
  end

  def edit
    @band = Band.find(params[:id])
  end

  def update
    @band = Band.find(params[:id])
    @band.update(band_params)
    redirect_to(bands_path)
  end

  def destroy
    @band = Band.find(params[:id])
    @band.destroy
    redirect_to bands_path
  end

  private

  def band_params
    params.require(:band).permit(:name, :image, :festivals)
  end

end
