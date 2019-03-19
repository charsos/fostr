class PetsController < ApplicationController
  before_action :find_pet, only: [ :show ]

  def index
    @pets = Pet.all
  end

  def show
  end

  def new
    @pet = Pet.new
    # @shelter = Shelter.find(params[:shelter_id])

  end

  def create
    @pet = Pet.new(pet_params)
    @pet.shelter = Shelter.find(params[:pet][:shelter_id])

    @pet.save
    redirect_to pets_path
  end

  def update
  end

  def edit
  end

  private

  def find_pet
    @pet = Pet.find(params[:id])
  end

  def pet_params
    params.require(:pet).permit(:name, :age, :breed, :size, :sociability, :status, :activity_level, :shelter_id, :photo)
  end

end
