class RemoveChildrenFeeFromFishingParks < ActiveRecord::Migration[5.2]
  def change
    remove_column :fishing_parks, :children_fee, :integer
  end
end
