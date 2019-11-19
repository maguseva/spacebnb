class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.string :status
      t.integer :guests
      t.string :start_date
      t.string :end_date
      t.references :planet, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
