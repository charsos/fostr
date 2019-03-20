class SheltersController < ApplicationController
  before_action :find_shelter, only: [:show, :edit, :update, :destroy]

  def index
    @shelters = Shelter.all
  end

  def show
  @pets = @shelter.pets
  end

  def new
    @shelter = Shelter.new
  end

  def create
    @shelter = Shelter.new(shelter_params)
    @shelter.user = current_user
    if @shelter.save
      redirect_to shelters_path
    else
      render :new
    end
  end

  def update
    @shelter.update(shelter_params)
    redirect_to shelter_path(@shelter)
  end

  def edit
  end

  def destroy
    @shelter.destroy
    redirect_to shelters_path
  end

  private

  def find_shelter
    @shelter = Shelter.find(params[:id])
  end

  def shelter_params
    params.require(:shelter).permit(:name, :address, :phone_number, :user_id)
  end
end
