# frozen_string_literal: true

class DemographicsController < ApplicationController
  before_action :load_demographics_form, only: %i[edit update]

  def new
    @demographic = Demographic.new
    render
  end

  def create
    @demographic = Demographic.new(demographic_params)
    if @demographic.save
      redirect_to root_path
    else
      redirect_to new_demographic_path
    end
  end

  def edit
    render
  end

  def update
    if @demographic.update(demographic_params)
      redirect_to root_path
    else
      redirect_to edit_contact_path(@demographic.id)
    end
  end

  private

  def load_demographics_form
    @demographic = Demographic.find(params['id'])
  end

  def demographic_params
    params.require(:demographic).permit(:gender, :age, :level_of_education, :lgbtq_status, race: [])
  end
end
