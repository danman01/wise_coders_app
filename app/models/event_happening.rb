class EventHappening < ApplicationRecord
  belongs_to :event
  belongs_to :happening
  belongs_to :user
end
