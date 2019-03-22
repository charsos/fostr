class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :shelters, dependent: :destroy
  has_many :fosters
  has_many :pets_at_shelter, through: :shelters, source: :pets
  has_many :pets, through: :fosters
end
