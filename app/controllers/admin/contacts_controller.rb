class Admin::ContactsController < ApplicationController
  def index
    @contcts = Contact.all
    #@contact = Contact.find(params[:id])
  end

 def show
 end

  private
  def contact_params
    params.require(:contact).permit(:title, :body, :name, :telephone_number, :email)
  end
end
