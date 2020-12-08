class AddFeeToFishingParks < ActiveRecord::Migration[5.2]
  def change
    add_column :fishing_parks, :fee, :integer
  end
end
