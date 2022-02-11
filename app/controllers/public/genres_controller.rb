class Public::GenresController < ApplicationController

  def index
  end

  def show
  end

 private
  def genre_params
    params.require(:genre).permit(:title)
  end

end
