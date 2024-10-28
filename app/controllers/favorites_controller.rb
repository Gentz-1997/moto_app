class FavoritesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_spot

  def create
    @favorite = @spot.favorites.new(user: current_user)
    if @favorite.save
      redirect_to spot_path(@spot), notice: 'スポットをお気に入りに追加しました'
    else
      redirect_to spot_path(@spot), alert: 'お気に入りの追加に失敗しました'
    end
  end

  def destroy
    @favorite = @spot.favorites.find_by(user: current_user)
    if @favorite.destroy
      redirect_to spot_path(@spot), notice: 'お気に入りを解除しました'
    else
      redirect_to spot_path(@spot), alert: 'お気に入りの解除に失敗しました'
    end
  end

  private

  def set_spot
    @spot = Spot.find(params[:spot_id])
  end
end
