class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :fishing_parks, dependent: :destroy
  has_many :favorites, dependent: :destroy
  
  has_many :reviews, dependent: :destroy

  def favorited_by?(fishing_park_id)
   favorites.where(fishing_park_id: fishing_park_id).exists?
  end

end
