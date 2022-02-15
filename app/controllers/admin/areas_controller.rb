class Admin::AreasController < ApplicationController
  def index
   @areas = Area.all
  end

  def new
    @area = Area.new
  end

  def create
    area = Area.new(area_params)
    area.save
    redirect_to admin_areas_path
  end

  def destroy
    area = Area.find(params[:id])
    area.destroy
    redirect_to admin_areas_path
  end

  private
  def area_params
    params.require(:area).permit(:title, :image)
  end

end
