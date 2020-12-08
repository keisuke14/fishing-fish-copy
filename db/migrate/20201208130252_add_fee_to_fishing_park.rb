class AddFeeToFishingPark < ActiveRecord::Migration[5.2]
  def change
    add_column :fishing_parks, :fee, :string
  end
end
