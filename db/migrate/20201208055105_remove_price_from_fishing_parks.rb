class RemovePriceFromFishingParks < ActiveRecord::Migration[5.2]
  def change
    remove_column :fishing_parks, :price, :integer
  end
end
