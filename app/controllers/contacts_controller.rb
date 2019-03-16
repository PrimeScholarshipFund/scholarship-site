class ContactsController < ApplicationController
  before_action :load_contact_form, only: %i[edit update]
  def new
    @contact = Contact.new
    render
  end

  def create
    @contact = Contact.new(contact_params)
    if @contact.save
      redirect_to root_path
    else
      redirect_to new_contact_path
    end
  end

  def edit
    render
  end

  def update
    if @contact.update(contact_params)
      redirect_to root_path
    else
      redirect_to edit_contact_path(@contact.id)
    end
  end

  private

  def load_contact_form
    @contact = Contact.find(params['id'])
  end

  def contact_params
    params.require(:contact).permit(:first_name, :last_name, :middle_initial, :address_line_1, :address_line_2, :city, :state, :zip_code, :phone_number)
  end
end
