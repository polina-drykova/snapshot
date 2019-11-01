class AddAverageRatingToCameras < ActiveRecord::Migration[5.2]
  def change
    add_column :cameras, :average_rating, :integer, default: 0
  end
end
