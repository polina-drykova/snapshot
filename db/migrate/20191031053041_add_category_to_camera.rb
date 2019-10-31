class AddCategoryToCamera < ActiveRecord::Migration[5.2]
  def change
    add_column :cameras, :category, :string
  end
end
