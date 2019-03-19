class SheltersController < ApplicationController
  def index
    @shelters = Shelter.all
  end

  def show
    @shelter = Shelter.find(params[:id])
  end

  def new
    @shelter = Shelter.new
  end

  def create
    @shelter = Shelter.new(shelter_params)
    @shelter.user = User.find(params[:user_id])
    @shelter.save
    redirect_to shelters_path
  end

  private

  def shelter_params
    params.require(:shelter).permit(:name, :address, :phone_number, :user_id)
  end
end
