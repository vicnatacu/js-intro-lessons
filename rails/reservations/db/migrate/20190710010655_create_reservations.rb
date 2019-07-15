class CreateReservations < ActiveRecord::Migration[5.2]
  def change
    create_table :reservations do |t|
      t.datetime :booking_time
      t.integer :size
      t.references :restaurant, foreign_key: true

      t.timestamps
    end
  end
end
