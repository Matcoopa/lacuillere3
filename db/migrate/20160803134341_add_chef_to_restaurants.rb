class AddChefToRestaurants < ActiveRecord::Migration
  def change
    add_column :restaurants, :chef, :string
  end
end
