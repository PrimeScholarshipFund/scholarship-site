# frozen_string_literal: true

class IncomesController < ApplicationController
  before_action :load_income_form, only: %i[edit update]

  def new
    @income = Income.new
  end

  def create
    @income = Income.new(income_params)
    if @income.save
      redirect_to root_path
    else
      redirect_to new_demographic_path
    end
  end

  def edit; end

  def update
    if @income.update(income_params)
      redirect_to root_path
    else
      redirect_to edit_contact_path(@income.id)
    end
  end

  private

  def load_income_form
    @income = Income.find(params['id'])
  end

  def income_params
    params.require(:income).permit(:adjusted_gross_income, :filing_status, :dependents, :government_assistance, :government_assistance_notes, :employed_during_bootcamp, :employed_during_bootcamp_notes, :supported_by_other, :supported_by_other_notes)
  end
end
