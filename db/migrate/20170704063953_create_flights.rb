class CreateFlights < ActiveRecord::Migration[5.0]
  def change
    create_table :flights do |t|
      t.string :flight_no
      t.date :departure_date
      t.string :from
      t.string :to

      t.timestamps
    end
  end
end
