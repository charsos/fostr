class FostersController < ApplicationController

  def new
    @foster = Foster.new()
    authorize @foster
  end

  def create
    @pet = Pet.find(params[:pet_id])
    @foster = Foster.new(pet: @pet, user: current_user)
    day = Date.today.to_s
    @foster.date = day
    @pet.status = "fostered"
    authorize @foster
    @pet.save
    if @foster.save
      redirect_to pet_path(@foster.pet_id), notice: "You're now fostering this pet"
    else render @pet end
  end
end
