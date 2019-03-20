class PetsController < ApplicationController
  before_action :find_pet, only: [ :show, :update, :edit, :destroy]

  def index
    @pets = Pet.all
  end

  def show
  end

  def new
    @pet = Pet.new
    @my_shelters = Shelter.where(user: current_user.id)
    # @shelter = Shelter.find(params[:shelter_id])
  end

  def create
    raise
    @pet = Pet.new(pet_params)
    @pet.shelter = Shelter.find(params[:pet][:shelter_id])
    @pet.status = "available"
    if @pet.save
      redirect_to pet_path(@pet)
    else
      render :new
    end
  end

  def update
    @pet.update(pet_params)
    redirect_to pet_path(@pet)
  end

  def edit
  end

  def destroy
    @pet.destroy
    redirect_to pets_path
  end

  private

  def find_pet
    @pet = Pet.find(params[:id])
  end

  def pet_params
    params.require(:pet).permit(:name, :age, :breed, :size, :sociability, :status, :activity_level, :shelter_id, :photo)
  end
end

