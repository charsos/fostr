class UsersController < ApplicationController
  before_action :find_user, only: [:show, :edit, :update]

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

  # def update
  #   @user.update(user_params)
  #   redirect_to user_path(@user)
  # end

  # def edit
  # end

  private

  def find_user
    @user = User.find(params[:id])
    # authorize @user
  end

  def user_params
    params.require(:user).permit(:name, :description, :phone_number, :shelter_owner)
  end
end
