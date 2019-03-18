class Pet < ApplicationRecord
  belongs_to :shelter, dependent: :destroy
  has_many :fosters
end
