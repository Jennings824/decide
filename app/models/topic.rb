class Topic < ApplicationRecord
  has_many :user_topics
  has_many :users, through: :user_topics

  validates :title, presence: true
  validates :criteria, presence: true
end
