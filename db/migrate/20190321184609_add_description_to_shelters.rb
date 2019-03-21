class AddDescriptionToShelters < ActiveRecord::Migration[5.2]
  def change
    add_column :shelters, :description, :string
  end
end
