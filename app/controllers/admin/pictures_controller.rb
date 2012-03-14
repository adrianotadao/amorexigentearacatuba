# encoding: utf-8
class Admin::PicturesController < Admin::AdminsController
  skip_before_filter :verify_authenticity_token, :only => :upload
  
  def create
    if @picture.save
      redirect_to [:admin, @picture], :notice => 'Imagem criada com sucesso.'
    else
      render :action => "new"
    end
  end

  def update
    if @picture.update_attributes(params[:picture])
      redirect_to [:admin, @picture], :notice => 'Imagem editada com sucesso.'
    else
      render :action => "edit"
    end
  end

  def destroy
    if @picture.destroy
      redirect_to [:admin, :pictures], :notice => "Imagem deletada com sucesso!"
    else
      redirect_to :action => 'edit'
    end
  end

  def browser
    @pictures = Picture.all
    render :layout => false
  end

  def upload
    picture = Picture.create(:data => params[:upload])
    render :text => "<script type='text/javascript'>window.parent.CKEDITOR.tools.callFunction(#{params[:CKEditorFuncNum]}, '#{picture.data.url(:medium)}'); </script>"
  end
end