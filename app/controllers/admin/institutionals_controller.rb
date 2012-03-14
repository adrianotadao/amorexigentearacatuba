class Admin::InstitutionalsController < Admin::AdminsController
  def new
    @institutional = Institutional.first || Institutional.new
  end
  
  def edit
    @institutional = Institutional.find(params[:id])
  end
  
  def create
    @institutional = Institutional.new(params[:institutional])
    if @institutional.save
      flash[:notice] = "Quem somos salvo com sucesso!"
      redirect_to :action => 'new'
    else
      flash.now[:error] = "Verifique se todos os campos foram preenchidos corretamente."
      render :action => 'new'
    end
  end
  
  def update
    @institutional = Institutional.find(params[:id])
    if @institutional.update_attributes(params[:institutional])
      flash[:notice] = "Quem somos alterado com sucesso!"
      redirect_to :action=>'new'
    else
      flash.now[:error] = "Verifique se todos os campos foram preenchidos corretamente."
      render :action => 'edit'  
    end
  end
end