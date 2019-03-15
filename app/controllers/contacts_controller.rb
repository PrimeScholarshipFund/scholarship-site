class ContactsController < ApplicationController
  before_action :load_contact_form, only: %i[edit update]
  def new
    render
  end

  def edit
    render
  end

  def update
    updated_contact = params[:contacts]
    @contact.update(first_name: updated_contact[:first_name], last_name: updated_contact[:last_name], middle_initial: updated_contact[:middle_initial], address_line_1: updated_contact[:address_line_1], address_line_2: updated_contact[:address_line_2], city: updated_contact[:city], state: updated_contact[:state], zip_code: updated_contact[:zip_code], phone_number: updated_contact[:zip_code])
    redirect_to root_path
  end

  private

  def load_contact_form
    @contact = Contacts.find(params['id'])
  end
end