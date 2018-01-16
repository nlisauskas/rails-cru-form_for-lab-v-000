class ArtistsController < ApplicationController

  def index
  end

  def new
    @artist = Artist.new
  end

  def create
    @artist = Artist.create(artist_params(:name, :bio))
    redirect_to artist_path(@artist)
  end

  def show
  end

  def edit
  end

  def update
  end

  private

  def artist_params(*args)
    params.require(:artist).permit(*args)
  end

end
