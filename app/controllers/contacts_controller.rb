class ContactsController < ApplicationController
  def new
    @contact = Contact.new
    @partners = Partner.actives.random.all
  end
  
  def create
    @contact = Contact.new params[:contact]

    if @contact.save
      #ContactMailer.send_contact(@contact).deliver!
      redirect_to contact_path
    else
      render :action => "new"
    end
  end
end
