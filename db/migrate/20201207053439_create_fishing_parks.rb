class CreateFishingParks < ActiveRecord::Migration[5.2]
  def change
    create_table :fishing_parks do |t|
      t.string :image_id
      t.text :body

      t.timestamps
    end
  end
end
