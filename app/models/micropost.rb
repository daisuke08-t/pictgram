class Micropost < ApplicationRecord
  validates :coment, presence: true
  
  belongs_to :user
  belongs_to :topic
end
