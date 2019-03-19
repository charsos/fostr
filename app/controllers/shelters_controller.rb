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

  def pet_params
    params.require(:pet).permit(:name, :address, :phone_number)
  end
end
