class RemoveFeeFromFishingParks < ActiveRecord::Migration[5.2]
  def change
    remove_column :fishing_parks, :fee, :integer
  end
end
