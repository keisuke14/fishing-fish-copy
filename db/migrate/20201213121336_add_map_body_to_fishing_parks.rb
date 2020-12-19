class AddMapBodyToFishingParks < ActiveRecord::Migration[5.2]
  def change
    add_column :fishing_parks, :map_body, :text
  end
end
