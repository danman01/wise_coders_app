class Happening < ApplicationRecord
  belongs_to :user
  has_many :happening_interests, dependent: :destroy
  has_many :interests, through: :happening_interests
  has_many :event_happenings, dependent: :destroy
  has_many :events, through: :event_happenings
end
