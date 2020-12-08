class AddChildrenTourFeeToFishingPark < ActiveRecord::Migration[5.2]
  def change
    add_column :fishing_parks, :children_tour_fee, :string
  end
end
