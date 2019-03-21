class SheltersController < ApplicationController
  before_action :find_shelter, only: [:show, :edit, :update, :destroy]

  def index
    @shelters = policy_scope(Shelter).order(created_at: :desc)
  end

  def show
  end

  def new
    @shelter = Shelter.new
    authorize @shelter
  end

  def create
    @shelter = Shelter.new(shelter_params)
    @shelter.user = current_user
    authorize @shelter
    @shelter.save
    redirect_to shelters_path
  end

  def update
  end

  def edit
  end

  def destroy
  end

  private

  def find_shelter
    @shelter = Shelter.find(params[:id])
    authorize @shelter
  end

  def shelter_params
    params.require(:shelter).permit(:name, :address, :phone_number, :user_id)
  end
end
