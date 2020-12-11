class FishingPark < ApplicationRecord
  belongs_to :user, optional: true
  has_many :favorites, dependent: :destroy
  
  has_many :reviews, dependent: :destroy
  
  
  attachment :image
  

  def self.search(word)
    # return FishingPark.all unless search
    FishingPark.where(['name LIKE ?', "%#{word}%"])
  end

end
