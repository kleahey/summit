class Teammember < ApplicationRecord
  has_many :schedules, dependent: :destroy
  has_many :roles
  has_many :locations
  has_many :sessions
end
