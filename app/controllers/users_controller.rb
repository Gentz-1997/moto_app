class UsersController < ApplicationController
  def show
    @user = User.find_by(id: params[:id])
  end

  # def new
  #   @user = User.new
  # end

  # def create
  #   @user = User.create(user_params)
  #   if @user.save
  #     flash[:notice] = "登録しました"
  #     redirect_to user_path(@user)
  #   else
  #     render :new, status: :unprocessable_entity
  #   end
  # end

  # private

  # def user_params
  #   params.require(:user).permit(:name, :email, :crypted_password)
  # end
end
