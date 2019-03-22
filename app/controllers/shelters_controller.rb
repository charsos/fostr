class SheltersController < ApplicationController
  before_action :find_shelter, only: [:show, :edit, :update, :destroy]

  def index
    @shelters = policy_scope(Shelter).order(created_at: :desc)
  end

  def show
    @pets = @shelter.pets
    #@shelter_with_coord = @shelter.where.not(latitude: nil, longitude: nil)
    if @shelter.latitude
      @markers = [{lat: @shelter.latitude,lng: @shelter.longitude}]
    end
  end

  def new
    @shelter = Shelter.new
    authorize @shelter
  end

  def create
    @shelter = Shelter.new(shelter_params)
    @shelter.user = current_user
    current_user.shelter_owner = true
    authorize @shelter
    if @shelter.save && current_user.save
      redirect_to shelter_path(@shelter)
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
    authorize @shelter
  end

  def shelter_params
    params.require(:shelter).permit(:name, :address, :phone_number, :description, :user_id)
  end
end
