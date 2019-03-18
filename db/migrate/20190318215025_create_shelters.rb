class CreateShelters < ActiveRecord::Migration[5.2]
  def change
    create_table :shelters do |t|
      t.string :name
      t.string :address
      t.string :phone_number
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
