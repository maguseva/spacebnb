class CreatePlanets < ActiveRecord::Migration[5.2]
  def change
    create_table :planets do |t|
      t.string :name
      t.string :price
      t.integer :capacity
      t.string :travel_time
      t.string :description
      t.string :photo

      t.timestamps
    end
  end
end
