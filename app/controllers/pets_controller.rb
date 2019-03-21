class PetsController < ApplicationController
  before_action :find_pet, only: [ :show, :update, :edit, :destroy]

  def index
    # @pets = Pet.all
    @pets = policy_scope(Pet).order(created_at: :desc)
  end

  def show
  end

  def new
    @pet = Pet.new
    @my_shelters = Shelter.where(user: current_user.id)
    authorize @pet
    # @shelter = Shelter.find(params[:shelter_id])
  end

  def create
    @pet = Pet.new(pet_params)
    @pet.shelter = Shelter.find(params[:pet][:shelter_id])
    @pet.status = "available"
    authorize @pet
    if @pet.save
      redirect_to pet_path(@pet)
    else
      render :new
    end
  end

  def update
    @pet.update(pet_params)
    authorize @pet
    redirect_to pet_path(@pet)
  end

  def edit
  end

  def destroy
    @pet.destroy
    authorize @pet
    redirect_to pets_path
  end

  private

  def find_pet
    @pet = Pet.find(params[:id])
    authorize @pet
  end

  def pet_params
    params.require(:pet).permit(:name, :age, :breed, :size, :sociability, :status, :activity_level, :shelter_id, :description, :good_with_other_pets, :good_with_kids, :hypoallergenic, :photo)
  end
end
