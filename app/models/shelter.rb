class Shelter < ApplicationRecord
  belongs_to :user, dependent: :destroy
  has_many :pets, dependent: :destroy
  before_destroy :check_for_pets

  private

  def check_for_pets
    if pets.count.positive?
      raise_error
      return false
    end
  end
end
