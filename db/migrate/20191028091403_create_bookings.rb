class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.date :rental_date
      t.date :return_date
      t.integer :total_price
      t.integer :service_fee
      t.boolean :accept_decline
      t.references :user, foreign_key: true
      t.references :camera, foreign_key: true

      t.timestamps
    end
  end
end
