class Admin::GenresController < ApplicationController

  def index
    @genres = Genre.all
    #binding.pry
    #@genre1 = Genre.find(params[:id])
  end

  def new
    @genre = Genre.new
  end


  def create
    genre = Genre.new(post_params)
    genre.save!
    redirect_to admin_genres_path
  end

  def destroy
    @genre = Genre.find(params[:id])
    @genre.destroy
    redirect_to genres_path
  end

 private
  def genre_params
    params.require(:genre).permit(:title)
  end


end
