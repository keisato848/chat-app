class Message < ApplicationRecord
  belongs_to :user
  belongs_to :room, dependent: :destoroy
  has_one_attached :image

  varidates :content, presence: true, unless: :was_attached?

  def was_attached?
    self.image.attached?
  end
end
