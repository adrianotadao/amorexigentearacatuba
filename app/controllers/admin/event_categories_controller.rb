class Admin::EventCategoriesController < Admin::AdminsController
  def index
    @event_categories = EventCategory.by_name.all
  end
  
  def new
    @event_category = EventCategory.new
  end
  
  def edit
    @event_category = EventCategory.find(params[:id])
  end
  
  def create
    @event_category = EventCategory.new(params[:event_category])
    if @event_category.save
      flash[:notice] = "Categoria de evento salva com sucesso!"
      redirect_to :action => 'index'
    else
      flash.now[:error] = "Verifique se todos os campos foram preenchidos corretamente."
      render :action => 'new'
    end
  end
  
  def update
    @event_category = EventCategory.find(params[:id])
    if @event_category.update_attributes(params[:event_category])
      flash[:notice] = "Categoria de evento alterada com sucesso!"
      redirect_to :action=>'index'
    else
      flash.now[:error] = "Verifique se todos os campos foram preenchidos corretamente."
      render :action => 'edit'  
    end
  end
  
  def destroy
    @event_category = EventCategory.find(params[:id])
    if @event_category.destroy
      flash[:notice] = "Categoria de evento deletada com sucesso!"
    else
      p @event_category.errors
      flash.now[:error] = "Verifique se a marca #{@event_category.name} realmente pode ser deletada."
    end
    redirect_to :action => 'index'
  end
end