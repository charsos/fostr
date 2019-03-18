class Shelter < ApplicationRecord
  belongs_to :user, dependent: :destroy
  has_many :pets, dependent: :destroy
end
