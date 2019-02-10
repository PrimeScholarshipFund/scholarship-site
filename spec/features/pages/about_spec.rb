# frozen_string_literal: true

require "rails_helper"

RSpec.feature 'About', :type => :feature do
  it 'displays board names' do
    visit '/pages/about'

    expect(page).to have_content 'Ilana Nagib'
    expect(page).to have_content 'Andy Krueger'
    expect(page).to have_content 'Ellen Keal'
  end
end