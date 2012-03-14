class AlbumsController < ApplicationController
  def index
    @albums = Album.actives.all
  end
  
  def show
    @album = Album.find params[:id]
  end 
end
