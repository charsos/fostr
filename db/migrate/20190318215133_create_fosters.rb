class CreateFosters < ActiveRecord::Migration[5.2]
  def change
    create_table :fosters do |t|
      t.datetime :date
      t.references :pet, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
