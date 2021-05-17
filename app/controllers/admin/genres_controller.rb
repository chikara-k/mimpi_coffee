class Admin::GenresController < ApplicationController
  before_action :authenticate_admin!

  def index
    @genre = Genre.new
    @genres = Genre.all
  end

  def edit
    @genre = Genre.find(params[:id])
  end

  def create
    @genre = Genre.new(genre_params)
    if @genre.save
      flash[:success] = "ジャンルを追加しました"
      redirect_to admin_genres_path
    else
      @genres = Genre.all
      render :index
    end
  end

  def update
    @genre = Genre.find(params[:id])
    if @genre.update(genre_params)
      flash[:success] = "ジャンルを変更しました"
      redirect_to admin_genres_path(@genre)
    else
      render :edit
    end
  end

  def destroy
    @genre = Genre.find(params[:id])
    if @genre.destroy
      flash[:notice] = "ジャンルを削除しました"
      redirect_to admin_genres_path
    else
      render :index
    end
  end

  private

  def genre_params
    params.require(:genre).permit(:name)
  end
end
