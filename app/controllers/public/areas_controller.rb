class Public::AreasController < ApplicationController

  def index
    @areas = Area.all
  end

  def show
   @area = Area.find(params[:id])
   @posts = @area.posts
  end

 private
  def area_params
    params.require(:area).permit(:title, :image)
  end

end
