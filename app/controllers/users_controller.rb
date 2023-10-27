# frozen_string_literal: true

class UsersController < ApplicationController


  def index
    @users = User.all
    render json: @users
  end

  private



  def user_params
    params.require(:user).permit(:uuid, :name, :email)
  end

end
