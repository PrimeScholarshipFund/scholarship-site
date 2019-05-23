# frozen_string_literal: true

class User < ApplicationRecord
  include Clearance::User

  validates :full_name, presence: true
end
