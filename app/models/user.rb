class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_many :user_topics
  has_many :topics, through: :user_topics


  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end