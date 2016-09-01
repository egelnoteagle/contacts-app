class ContactsController < ApplicationController
  def one
    @contact = Contact.find(2)
  end  

  def all
    @contacts = Contact.all
  end  

  def new_contact
    
  end

  def create_contact
    @contact = Contact.create(first_name: params[:first_name], last_name: params[:last_name], phone_number: params[:phone_number], email: params[:email])
  end
end
