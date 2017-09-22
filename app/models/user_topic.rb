class UserTopic < ApplicationRecord
  belongs_to :topic
  belongs_to :user
  has_many :opinions

  validates :topic_id, presence: true
  validates :user_id, presence: true
end
