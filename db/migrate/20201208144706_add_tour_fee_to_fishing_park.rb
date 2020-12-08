class AddTourFeeToFishingPark < ActiveRecord::Migration[5.2]
  def change
    add_column :fishing_parks, :tour_fee, :string
  end
end
