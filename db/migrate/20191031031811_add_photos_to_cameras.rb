class AddPhotosToCameras < ActiveRecord::Migration[5.2]
  def change
    add_column :cameras, :photos, :json
  end
end
