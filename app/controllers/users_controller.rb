class UsersController < ApplicationController
  before_action :authenticate_user!
  before_action :set_user
  before_action :correct_user

  def show
    @spots = @user.spots
  end

  private

  def set_user
    @user = User.find_by(id: params[:id])
  end

  def correct_user
    if @user != current_user
      redirect_to root_path, alert: "権限がありません"
    end
  end
end
