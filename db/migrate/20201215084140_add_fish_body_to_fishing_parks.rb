class AddFishBodyToFishingParks < ActiveRecord::Migration[5.2]
  def change
    add_column :fishing_parks, :fish_body, :text
  end
end
