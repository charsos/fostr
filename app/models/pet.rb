class Pet < ApplicationRecord
  mount_uploader :photo, PhotoUploader
  belongs_to :shelter, dependent: :destroy
  has_many :fosters
end
