class AddUserIdToFishingParks < ActiveRecord::Migration[5.2]
  def change
    add_column :fishing_parks, :user_id, :integer
  end
end
