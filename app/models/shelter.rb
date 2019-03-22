class Shelter < ApplicationRecord
  belongs_to :user, dependent: :destroy
  has_many :pets, dependent: :destroy
  before_destroy :check_for_pets

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  private

  def check_for_pets
    if pets.count.positive?
      raise_error
      return false
    end
  end
end
