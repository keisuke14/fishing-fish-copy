class AddNameToFishingParks < ActiveRecord::Migration[5.2]
  def change
    add_column :fishing_parks, :name, :string
  end
end
