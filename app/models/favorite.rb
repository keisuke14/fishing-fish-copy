class Favorite < ApplicationRecord
  belongs_to :user
  belongs_to :fishing_park
  
  validates_uniqueness_of :fishing_park_id, scope: :user_id
  
end
