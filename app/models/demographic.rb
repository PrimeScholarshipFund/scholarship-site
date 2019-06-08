# frozen_string_literal: true

# == Schema Information
#
# Table name: demographics
#
#  id                   :integer          not null, primary key
#  gender               :string
#  age                  :integer
#  level_of_education   :integer
#  lgbtq_status         :integer
#  race                 :string[]
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Demographic < ApplicationRecord
  enum level_of_education: {
    some_high_school: 1,
    high_school: 2,
    some_college: 3,
    trade_school: 4,
    associate: 5,
    bachelors: 6,
    masters: 7,
    professional: 8,
    doctorate: 9,
    other_education: 10,
    do_not_wish_to_specify_education: 11,
  }

  # enum race: {
  #   white: 1,
  #   hispanic_or_latino: 2,
  #   black_african_american: 3,
  #   native_american: 4,
  #   asian_pacific_islander: 5,
  #   other_race: 6,
  #   do_not_wish_to_specify_race: 7,
  # }

  RACES_ARRAY = ['White', 'Hispanic or Latino', 'Black or African American', 'Native American', 'Asian or Pacific Islander', 'Other', 'Do not wish to specify']

  enum lgbtq_status: {
    yes: 1,
    not: 2,
    do_not_wish_to_specify: 3,
  }, _suffix: true
end
