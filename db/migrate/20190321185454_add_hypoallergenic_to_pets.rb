class AddHypoallergenicToPets < ActiveRecord::Migration[5.2]
  def change
    add_column :pets, :hypoallergenic, :boolean
  end
end
