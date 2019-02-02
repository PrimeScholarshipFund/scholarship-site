class User < ApplicationRecord
  include Clearance::User

  validates :full_name, presence: :true
end
