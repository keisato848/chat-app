class Message < ApplicationRecord
  belongs_to :user
  belongs_to :room, dependent: :destoroy
  varidates :content, presence: true
end
