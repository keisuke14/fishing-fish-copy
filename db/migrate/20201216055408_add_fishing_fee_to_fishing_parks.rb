class AddFishingFeeToFishingParks < ActiveRecord::Migration[5.2]
  def change
    add_column :fishing_parks, :fishing_fee, :string
  end
end
