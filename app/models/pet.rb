class Pet < ApplicationRecord
  mount_uploader :photo, PhotoUploader
  belongs_to :shelter
  has_many :fosters, dependent: :destroy
end
