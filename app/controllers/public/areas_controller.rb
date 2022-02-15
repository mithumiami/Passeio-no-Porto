class Public::AreasController < ApplicationController

  def index
    @areas = Area.all
  end

  def show
  end

 private
  def area_params
    params.require(:area).permit(:title, :image)
  end

end
