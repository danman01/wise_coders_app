class CodeSchool < ApplicationRecord
  has_many :user_code_schools, dependent: :destroy
  has_many :users, through: :user_code_schools
end
