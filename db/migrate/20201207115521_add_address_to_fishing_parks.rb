class AddAddressToFishingParks < ActiveRecord::Migration[5.2]
  def change
    add_column :fishing_parks, :address, :string
  end
end
