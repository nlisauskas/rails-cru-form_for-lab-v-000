class GenresController < ApplicationController

  def index
    @genre = Artist.new
  end

  def new
    @genre = Artist.new
  end

  def create
    @genre = Artist.create(genre_params(:name, :bio))
    redirect_to artist_path(@genre)
  end

  def show
    @genre = Artist.find_by(params[:id])
  end

  def edit
    @genre = Artist.find_by(params[:id])
  end

  def update
    @genre = Artist.find_by(params[:id])
    @genre.update(genre_params(:name, :bio))
    redirect_to artist_path(@genre)
  end

  private

  def genre_params(*args)
    params.require(:genre).permit(*args)
  end

end
