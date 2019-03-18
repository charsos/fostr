class CreatePets < ActiveRecord::Migration[5.2]
  def change
    create_table :pets do |t|
      t.string :name
      t.integer :age
      t.string :breed
      t.string :size
      t.string :sociability
      t.string :status
      t.string :activity_level
      t.references :shelter, foreign_key: true

      t.timestamps
    end
  end
end
