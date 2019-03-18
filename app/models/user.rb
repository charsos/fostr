class User < ApplicationRecord
  has_many :shelters, dependent: :destroy
  has_many :fosters
  has_many :pets, through: :shelters
end
