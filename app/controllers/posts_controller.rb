class PostsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_spot

  def index
    @posts = @spot.posts
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

  private

  def set_spot
    @spot = Spot.find(params[:spot_id])
  end

  def post_params
    params.require(:post).permit(:content)
  end
end
