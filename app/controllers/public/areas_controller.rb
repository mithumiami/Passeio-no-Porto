class Public::AreasController < ApplicationController

  def index
  end

  def show
  end

 private
  def area_params
    params.require(:area).permit(:title, :image)
  end

end
