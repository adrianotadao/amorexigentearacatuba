class Admin::EventsController < Admin::AdminsController
  def index
    @events = Event.by_name.all
  end
  
  def new
    @event = Event.new
  end
  
  def edit
    @event = Event.find(params[:id])
  end
  
  def create
    @event = Event.new(params[:event])
    if @event.save
      flash[:notice] = "Evento salvo com sucesso!"
      redirect_to :action => 'index'
    else
      flash.now[:error] = "Verifique se todos os campos foram preenchidos corretamente."
      render :action => 'new'
    end
  end
  
  def update
    @event = Event.find(params[:id])
    if @event.update_attributes(params[:event])
      flash[:notice] = "Evento alterada com sucesso!"
      redirect_to :action=>'index'
    else
      flash.now[:error] = "Verifique se todos os campos foram preenchidos corretamente."
      render :action => 'edit'  
    end
  end
  
  def destroy
    @event = Event.find(params[:id])
    if @event.destroy
      flash[:notice] = "Evento deletada com sucesso!"
    else
      p @event.errors
      flash.now[:error] = "Verifique se a marca #{@event.name} realmente pode ser deletada."
    end
    redirect_to :action => 'index'
  end
end