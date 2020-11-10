class AddOwnerNameToRestaurants < ActiveRecord::Migration[6.0]
  def change
    add_column :restaurants, :owner_name, :string
  end
end
