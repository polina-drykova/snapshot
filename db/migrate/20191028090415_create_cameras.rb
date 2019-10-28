class CreateCameras < ActiveRecord::Migration[5.2]
  def change
    create_table :cameras do |t|
      t.string :name
      t.string :address
      t.string :description
      t.string :policies
      t.integer :price_per_day
      t.string :photo
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
