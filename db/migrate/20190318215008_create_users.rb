class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.string :phone_number
      t.text :description
      t.boolean :shelter_owner

      t.timestamps
    end
  end
end
