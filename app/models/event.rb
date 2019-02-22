class Event < ApplicationRecord
  has_many :users, through: :user_events
  has_many :user_events, dependent: :destroy
  has_many :event_happenings, dependent: :destroy
  has_many :happenings, through: :event_happenings
  has_many :event_repeats, dependent: :destroy
end
