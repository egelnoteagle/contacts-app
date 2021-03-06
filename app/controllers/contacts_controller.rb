class ContactsController < ApplicationController
  def index
    @contacts = Contact.all 
    group = params[:group]

    if group
      @contacts = Group.find_by(name: group).contacts
    end  
  end

  def show
    @contact = Contact.find(params[:id])
  end

  def new
    
  end

  def create
    @contact = Contact.create(first_name: params[:first_name],
                              last_name: params[:last_name],
                              middle_name: params[:middle_name],
                              phone_number: params[:phone_number],
                              email: params[:email],
                              bio: params[:bio])
  end

  def full_name
    "#{contact.first_name} #{contact.middle_name} #{contact.last_name}"
  end

  def edit
    @contact = Contact.find(params[:id])
  end

  def update
    @contact = Contact.find(params[:id])
    @contact.update(first_name: params[:first_name],
                    last_name: params[:last_name],
                    phone_number: params[:phone_number],
                    email: params[:email])
    redirect_to "/contacts/#{@contact.id}"
  end

  def destroy
    @contact = Contact.find(params[:id])
    @contact.destroy
    redirect_to "/contacts"
  end
end
