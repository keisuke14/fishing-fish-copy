class AddChildrenFeeToFishingParks < ActiveRecord::Migration[5.2]
  def change
    add_column :fishing_parks, :children_fee, :integer
  end
end
