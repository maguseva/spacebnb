class AddAddressToPlanets < ActiveRecord::Migration[5.2]
  def change
    add_column :planets, :address, :string
  end
end
