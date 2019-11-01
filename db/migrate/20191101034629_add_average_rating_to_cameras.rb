class AddAverageRatingToCameras < ActiveRecord::Migration[5.2]
  def change
    add_column :cameras, :average_rating, :integer
  end
end
