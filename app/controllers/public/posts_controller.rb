class Public::PostsController < ApplicationController

  def index
    @posts = Post.all
    #post = Post.find(params[:id])
    
  end

  def new
    @post = Post.new
  end

  def show
    @post = Post.find(params[:id])

  end

  def edit
    @post = Post.find(params[:id])
  end

  def create
    post = Post.new(post_params)
    post.save!
    redirect_to posts_path
  end

  def update
    @post = Post.find(params[:id])
    @post.update(post_params)
    redirect_to post_path(@post.id)
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to posts_path
  end
  
  def search
  @posts = Post.search(params[:keyword])
  @keyword = params[:keyword]
  render "index"
  end

  private
  def post_params
    params.require(:post).permit(:title, :body, :image, :user_id, :area_id, :genre_id)
  end

end