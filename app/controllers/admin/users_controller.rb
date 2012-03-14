# encoding: utf-8
class Admin::UsersController < Admin::AdminsController
  def index
    @users = User.by_name.all
  end
  
  def new
    @user = User.new
  end
  
  def edit
    @user = User.find(params[:id])
  end
  
  def create
    @user = User.new(params[:user])
    if @user.save
      flash[:notice] = "Usuário salvo com sucesso!"
      redirect_to :action => 'index'
    else
      flash.now[:error] = "Verifique se todos os campos foram preenchidos corretamente."
      render :action => 'new'
    end
  end
  
  def update
    @user = User.find(params[:id])
    
    update_password
    
    if @user.update_attributes(params[:user])
      flash[:notice] = "Usuáro alterado com sucesso!"
      redirect_to :action=>'index'
    else
      flash.now[:error] = "Verifique se todos os campos foram preenchidos corretamente."
      render :action => 'edit'  
    end
  end
  
  def destroy
    @user = User.find(params[:id])
    if @user.destroy
      flash[:notice] = "Usuário deletada com sucesso!"
    else
      p @user.errors
      flash.now[:error] = "Verifique se a marca #{@user.name} realmente pode ser deletada."
    end
    redirect_to :action => 'index'
  end
  
  def update_password
    params[:user].delete(:password) if params[:user][:password].blank?
    params[:user].delete(:password_confirmation) if params[:user][:password].blank? and params[:user][:password_confirmation].blank?
  end
  
end