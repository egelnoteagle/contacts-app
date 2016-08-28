class ContactsController < ApplicationController
  def one
    @contact = Contact.find(2)
  end  

  def all
    @contacts = Contact.all
  end  
end
