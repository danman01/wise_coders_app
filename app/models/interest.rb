class Interest < ApplicationRecord
  has_many :users, through: :user_interests
  has_many :user_interests, dependent: :destroy
  has_many :happening_interests, dependent: :destroy
  has_many :happenings, through: :happening_interests
end
