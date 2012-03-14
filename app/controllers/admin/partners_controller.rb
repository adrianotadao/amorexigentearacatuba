class Admin::PartnersController < Admin::AdminsController
  def index
    @partners = Partner.by_name.all
  end
  
  def new
    @partner = Partner.new
  end
  
  def edit
    @partner = Partner.find(params[:id])
  end
  
  def create
    @partner = Partner.new(params[:partner])
    if @partner.save
      flash[:notice] = "Parceiro salvo com sucesso!"
      redirect_to :action => 'index'
    else
      flash.now[:error] = "Verifique se todos os campos foram preenchidos corretamente."
      render :action => 'new'
    end
  end
  
  def update
    @partner = Partner.find(params[:id])
    if @partner.update_attributes(params[:partner])
      flash[:notice] = "Parceiro alterado com sucesso!"
      redirect_to :action=>'index'
    else
      flash.now[:error] = "Verifique se todos os campos foram preenchidos corretamente."
      render :action => 'edit'  
    end
  end
  
  def destroy
    @partner = Partner.find(params[:id])
    if @partner.destroy
      flash[:notice] = "Parceiro deletada com sucesso!"
    else
      p @partner.errors
      flash.now[:error] = "Verifique se a marca #{@partner.name} realmente pode ser deletada."
    end
    redirect_to :action => 'index'
  end
end