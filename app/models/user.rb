class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable, :omniauthable
  include DeviseTokenAuth::Concerns::User

  has_many :user_code_schools, dependent: :destroy
  has_many :code_schools, through: :user_code_schools
  has_many :user_interests, dependent: :destroy
  has_many :interests, through: :user_interests
  has_many :user_events, dependent: :destroy
  has_many :events, through: :user_events
  has_many :happenings
  has_many :event_happenings, dependent: :destroy
end
