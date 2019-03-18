class Foster < ApplicationRecord
  belongs_to :pet
  belongs_to :user
end
