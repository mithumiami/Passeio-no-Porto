class Public::PostsController < ApplicationController

  def index
    @posts = Post.all
    @tag_list = Tag.all              #ビューでタグ一覧を表示するために全取得。
    @post = current_user.posts.new   #ビューのform_withのmodelに使う。
    @post_like_ranks = Post.find(Like.group(:post_id).order('count(post_id) desc').limit(3).pluck(:post_id))

  end

  def new
    @post = Post.new
  end

  def show
    @post = Post.find(params[:id])
    @post_tags = @post.tags         #そのクリックした投稿に紐付けられているタグの取得。
  end

  def edit
    @post = Post.find(params[:id])
  end

  def create

    @post = current_user.posts.new(post_params)

    #tag_list = params[:post][:name].split(nil)

    if @post.save
      #@post.save_tag(tag_list)
      redirect_back(fallback_location: posts_path)
    else
      redirect_back(fallback_location: posts_path)
    end

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