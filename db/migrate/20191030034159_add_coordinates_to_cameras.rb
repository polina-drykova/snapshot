class AddCoordinatesToCameras < ActiveRecord::Migration[5.2]
  def change
    add_column :cameras, :latitude, :float
    add_column :cameras, :longitude, :float
  end
end
