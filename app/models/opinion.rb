class Opinion < ApplicationRecord
 belongs_to :user_topic

 validates :user_topic_id, presence: true
 validates :info, presence: true
end
