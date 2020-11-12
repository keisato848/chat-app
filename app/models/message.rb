class Message < ApplicationRecord
  belongs_to :user
  belongs_to :room, dependent: :destoroy
  has_one_attached :image
  
  varidates :content, presence: true
end
