class AddGoodWithKidsToPets < ActiveRecord::Migration[5.2]
  def change
    add_column :pets, :good_with_kids, :boolean
  end
end
