class Pet < ApplicationRecord
  mount_uploader :photo, PhotoUploader
  belongs_to :shelter
  # belongs_to :user, through: :shelters
  has_many :fosters, dependent: :destroy
end
