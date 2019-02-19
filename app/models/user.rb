<<<<<<< HEAD
class User < ApplicationRecord
=======
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
>>>>>>> ff735738ccacbafe5537d0c07afeb71deb2b7e80
end
