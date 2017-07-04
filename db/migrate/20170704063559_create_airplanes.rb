class CreateAirplanes < ActiveRecord::Migration[5.0]
  def change
    create_table :airplanes do |t|
      t.string :name
      t.string :type
      t.integer :rows
      t.integer :columns

      t.timestamps
    end
  end
end
