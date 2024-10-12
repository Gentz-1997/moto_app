class SpotsController < ApplicationController
  def index
  end

  def new
    @spot = Spot.new
  end

  def create
    @spot = Spot.create(spot_params)
    if @spot.save
      flash[:notice] = "スポットを登録しました"
      redirect_to spots_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def spot_params
    params.require(:spot).permit(:spot_name, :address, { :tag_ids=> [] })
  end
end
