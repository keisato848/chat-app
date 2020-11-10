class Message < ApplicationRecord
  belongs_to :user
  belongs_to :room
  varidates :content, presence: true
end
