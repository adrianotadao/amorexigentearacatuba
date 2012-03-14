class Admin::ProjectsController < Admin::AdminsController
  def index
    @projects = Project.by_name.all
  end
  
  def new
    @project = Project.new
  end
  
  def edit
    @project = Project.find(params[:id])
  end
  
  def create
    @project = Project.new(params[:project])
    if @project.save
      flash[:notice] = "Projeto salvo com sucesso!"
      redirect_to :action => 'index'
    else
      flash.now[:error] = "Verifique se todos os campos foram preenchidos corretamente."
      render :action => 'new'
    end
  end
  
  def update
    @project = Project.find(params[:id])
    if @project.update_attributes(params[:project])
      flash[:notice] = "Projeto alterado com sucesso!"
      redirect_to :action=>'index'
    else
      flash.now[:error] = "Verifique se todos os campos foram preenchidos corretamente."
      render :action => 'edit'  
    end
  end
  
  def destroy
    @project = Project.find(params[:id])
    if @project.destroy
      flash[:notice] = "Projeto deletada com sucesso!"
    else
      p @project.errors
      flash.now[:error] = "Verifique se a marca #{@project.name} realmente pode ser deletada."
    end
    redirect_to :action => 'index'
  end
end