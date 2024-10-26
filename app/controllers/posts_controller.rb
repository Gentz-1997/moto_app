class PostsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_spot, except: [:index]
  before_action :set_post, only: [:edit, :update, :destroy]
  before_action :correct_user, only: [:edit, :update, :destroy]

  def index
    @posts = Post.all
  end

  def new
    @post = @spot.posts.build
  end

  def create
    @post = @spot.posts.build(post_params)
    @post.user = current_user
    if @post.save
      flash[:notice] = "投稿を保存しました"
      redirect_to spot_path(@spot)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    if @post.update(post_params)
      flash[:notice] = "投稿を編集しました"
      redirect_to user_path(@post.user)
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    if @post.destroy
      flash[:notice] = "投稿を削除しました"
      redirect_to user_path(@post.user)
    else
      render :edit, status: :unprocessable_entity
    end
  end

  private

  def set_spot
    @spot = Spot.find(params[:spot_id])
  end

  def set_post
    @post = @spot.posts.find(params[:id])
  end

  def correct_user
    if @post.user != current_user
      redirect_to root_path, alert: "権限がありません"
    end
  end

  def post_params
    params.require(:post).permit(:content, :images)
  end
end
