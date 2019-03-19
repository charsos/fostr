class PetsController < ApplicationController
  before_action :find_pet, only: [ :show ]

  def index
    @pets = Pet.all
  end

  def show
    @reviews = Review.all
  end

  def new
    @pet = Pet.new
  end

  def create
    @pet = Pet.new(pet_params)
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
    params.require(:pet).permit(:name, :age, :breed, :size, :sociability, :status, :activity_level, :photo)
  end


end
