class SpotsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_spot, only: [:show, :edit, :update, :destroy]
  before_action :correct_user, only: [:destroy]

  def index
    @spots = Spot.all.order(created_at: :desc)

    respond_to do |format|
      format.html
      format.json{render json: @spots}
    end
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
  end

  def edit
  end

  def update
    if @spot.update(spot_params)
      flash[:notice] = "スポットを編集しました"
      redirect_to spot_path(@spot)
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    if @spot.destroy
      flash[:notice] = "スポットを削除しました"
      redirect_to user_path(current_user)
    else
      render :edit, status: :unprocessable_entity
    end
  end

  private

  def set_spot
    @spot = Spot.find(params[:id])
  end

  def spot_params
    params.require(:spot).permit(:spot_name, :address, :latitude, :longitude, { :tag_ids=> [] })
  end

  def correct_user
    if @spot.user != current_user
      redirect_to spot_path(@spot), alert: "権限がありません"
    end
  end
end
