# frozen_string_literal: true

class UsersController < Clearance::UsersController
  private

  def user_params
    params.require(:user).permit(:username, :full_name, :password)
  end
end
