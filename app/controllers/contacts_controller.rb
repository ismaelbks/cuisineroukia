class ContactsController < ApplicationController

  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new params[:contact]

    Mailer.contact_form(@contact).deliver # Là où toute la magie réside
    redirect_to root_url, notice: 'Message envoyé avec succès !'
  end

end