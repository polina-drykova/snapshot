class AddDetailsToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :name, :string
    add_column :users, :address, :string
    add_column :users, :avatar, :string
    add_column :users, :about_me, :text
  end
end
