class ContactMailer < ActionMailer::Base
  default :from => "drianotadao@gmail.com"
  
  def send_contact(contact)
    @contact = contact

    mail :subject => "Contato enviado pelo site - #{@contact.subject}", :to => ["drianotadao@gmail.com", "saulodasilvasantiago@gmail.com"]
  end
  
end
