class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end

  def create
    flash[:notice] = "Votre message a bien été envoyé"
    redirect_to root_path
    # a repositionner une fois le nom de domaine et adresse email reçus
    # @contact = Contact.new(params[:contact])
    # @contact.request = request
    # if @contact.deliver
    #   flash[:notice] = "Votre message a bien été envoyé"
    #   redirect_to root_path
    # else
    #   flash[:alert] = "Votre message n'a pas été transmis, merci d'essayer à nouveau"
    #   redirect_to root_path
    # end
  end

end
