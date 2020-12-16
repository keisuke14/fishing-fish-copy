class AddFishingChildrenFeeToFishingParks < ActiveRecord::Migration[5.2]
  def change
    add_column :fishing_parks, :fishing_children_fee, :string
  end
end
