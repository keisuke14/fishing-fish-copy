class AddMapImageToFishingParks < ActiveRecord::Migration[5.2]
  def change
    add_column :fishing_parks, :map_image_id, :string
  end
end
