class AddAcceptedToBookings < ActiveRecord::Migration[5.2]
  def change
    add_column :bookings, :accepted, :string, default: "waiting"
  end
end
