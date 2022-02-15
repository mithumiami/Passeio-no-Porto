class Public::ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end

  def create
    contact = Contact.new(contact_params)
    #binding.pry
    contact.save!
    redirect_to contacts_path
  end

  def index
    @contacts = Contact.all
  end
  

  private
  def contact_params
    params.require(:contact).permit(:title, :body, :name, :telephone_number, :email)
  end


end
