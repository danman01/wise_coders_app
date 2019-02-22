class Happening < ApplicationRecord
  belongs_to :user
  has_many :happening_interests, dependent: :destroy
  has_many :interests, through: :happening_interests
end
