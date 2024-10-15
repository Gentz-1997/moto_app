class SpotsController < ApplicationController
  before_action :authenticate_user!

  def index
  end

  def new
    @spot = Spot.new
  end

  def create
    @spot = Spot.create(spot_params)
    @spot.user_id = current_user.id
    if @spot.save
      flash[:notice] = "スポットを登録しました"
      redirect_to spots_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def search
    @spots = Spot.where('spot_name LIKE ?', "%#{params[:q]}%")
  end

  def show
    @spot = Spot.find_by(id: params[:id])
  end

  private

  def spot_params
    params.require(:spot).permit(:spot_name, :address, :latitude, :longitude, { :tag_ids=> [] })
  end
end
