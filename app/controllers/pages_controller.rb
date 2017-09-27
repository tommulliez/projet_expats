class PagesController < ApplicationController

  def home
    @contact = Contact.new
    @bottles = Bottle.all
  end

end
