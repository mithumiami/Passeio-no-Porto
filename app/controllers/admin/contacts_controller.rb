class Admin::ContactsController < ApplicationController
  def index
    @contacts = Contact.all
  end

 def show
   @contact = Contact.find(params[:id])
 end

  private
  def contact_params
    params.require(:contact).permit(:title, :body, :name, :telephone_number, :email)
  end
end
