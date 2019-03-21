class AddGoodWithOtherPetsToPets < ActiveRecord::Migration[5.2]
  def change
    add_column :pets, :good_with_other_pets, :boolean
  end
end
