class ContactsController < ApplicationController
  def index
    @contacts = Contact.all
  end

  def new
    
  end

  def create
    @contact = Contact.create(first_name: params[:first_name],
                              last_name: params[:last_name],
                              phone_number: params[:phone_number],
                              email: params[:email])
    redirect_to "/contacts/#{@contact.id}"
  end
end
