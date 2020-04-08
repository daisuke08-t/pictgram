class Topic < ApplicationRecord
  validates :user_id, presence: true
  validates :description, presence: true
  validates :image, presence: true
  
  belongs_to :user
  
  mount_uploader :image, ImageUploader
  
  has_many :favorites
  has_many :favorite_users, through: :favorites, source: 'user'
  
  has_many :microposts  #topicにmicropostを関連付ける
  has_many :micropost_users, through: :microposts, source: 'user'
end
