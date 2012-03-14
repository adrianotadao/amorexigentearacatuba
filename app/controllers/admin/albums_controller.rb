# encoding: utf-8
class Admin::AlbumsController < Admin::AdminsController
  def index
    @albums = Album.by_name.all
  end
  
  def new
    @album = Album.new
  end
  
  def edit
    @album = Album.find(params[:id])
  end
  
  def create
    @album = Album.new(params[:album])
    if @album.save
      flash[:notice] = "Album salvo com sucesso!"
      redirect_to :action => 'index'
    else
      flash.now[:error] = "Verifique se todos os campos foram preenchidos corretamente."
      render :action => 'new'
    end
  end
  
  def update
    @album = Album.find(params[:id])
    if @album.update_attributes(params[:album])
      flash[:notice] = "Album alterado com sucesso!"
      redirect_to :action=>'index'
    else
      flash.now[:error] = "Verifique se todos os campos foram preenchidos corretamente."
      render :action => 'edit'  
    end
  end
  
  def destroy
    @album = Album.find(params[:id])
    if @album.destroy
      flash[:notice] = "Usuário deletada com sucesso!"
    else
      p @album.errors
      flash.now[:error] = "Verifique se a marca #{@album.name} realmente pode ser deletada."
    end
    redirect_to :action => 'index'
  end
end