class CreateCameraphotos < ActiveRecord::Migration[5.2]
  def change
    create_table :cameraphotos do |t|
      t.references :camera, foreign_key: true
      t.string :photo

      t.timestamps
    end
  end
end
