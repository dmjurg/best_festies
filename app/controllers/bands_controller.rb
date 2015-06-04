class BandsController < ApplicationController
  def index
    @bands = Band.all
    respond_to do |format|
        format.html { render :index }
        format.json { render status: 200, json: @bands.to_json(include: :festivals) }
    end
  end

  def show
    @band = Band.find(params[:id])
    render status: 200, json: @band.to_json
  end

  def new
    @band = Band.new
  end

  def create
    @band = Band.new(band_params)
      if @band.save
        redirect_to(bands_path)
      else
        render(:new)
      end
  end

  private

  def band_params
    params.require(:band).permit(:name, :image, :festivals)
  end

end
