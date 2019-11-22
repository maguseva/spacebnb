class AddCoordinatesToPlanets < ActiveRecord::Migration[5.2]
  def change
    add_column :planets, :latitude, :float
    add_column :planets, :longitude, :float
  end
end
