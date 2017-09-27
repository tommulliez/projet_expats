class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(params[:contact])
    @contact.request = request
    if @contact.deliver
      render 'pages/home'
      flash.now[:notice] = 'Merci pour votre message, nous vous recontactons dans peu de temps !'
    else
      flash.now[:error] = 'Cannot send message.'
      render 'pages/home'
    end
  end
end
