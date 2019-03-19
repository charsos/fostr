class UsersController < ApplicationController
  def show
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    @user.save
    redirect_to pets_path
  end

  private

  def pet_users
    params.require(:user).permit(:name, :description, :phone_number, :shelter_owner)
  end
end
