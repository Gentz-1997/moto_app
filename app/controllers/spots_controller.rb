class SpotsController < ApplicationController
  before_action :authenticate_user!

  def index
    @spots = Spot.all.order(created_at: :desc)
  end

  def new
    @spot = Spot.new
  end

  def create
    @spot = Spot.create(spot_params)
    @spot.user_id = current_user.id
    if @spot.save
      flash[:notice] = "スポットを登録しました"
      redirect_to spot_path(@spot)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def search
    search_term = params[:q]
    @spots = Spot.joins(:tags)
    .where('spots.spot_name LIKE ? OR spots.address LIKE ? OR tags.tag_name LIKE ?',"%#{search_term}%", "%#{search_term}%", "%#{search_term}%").distinct
  end

  def show
    @spot = Spot.find_by(id: params[:id])
  end

  def edit
    @spot = Spot.find_by(id: params[:id])
  end

  def update
    @spot = Spot.find_by(id: params[:id])
    if @spot.update(spot_params)
      flash[:notice] = "スポットを編集しました"
      redirect_to spot_path
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @spot = Spot.find_by(id: params[:id])
    if @spot.destroy
      flash[:notice] = "スポットを削除しました"
      redirect_to user_path(current_user)
    else
      render :edit, status: :unprocessable_entity
    end
  end

  private

  def spot_params
    params.require(:spot).permit(:spot_name, :address, :latitude, :longitude, { :tag_ids=> [] })
  end
end
