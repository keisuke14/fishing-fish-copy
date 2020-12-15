class Review < ApplicationRecord
  belongs_to :user
  belongs_to :fishing_park
  
  # 評価を必須にする
  validates :score, presence: true
  validates :content, presence: true
  
end
