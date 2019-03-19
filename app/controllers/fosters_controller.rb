class FostersController < ApplicationController
  def create
    @foster = Foster.new(foster_params)
    @foster.save
    redirect_to pet_path(@foster.pet_id)
  end

  private

  def foster_params
    params.require(:foster).permit(:pet, :user)
  end
end
