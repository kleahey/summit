class Schedule < ApplicationRecord
  belongs_to :teammember
  belongs_to :location
  belongs_to :role
  belongs_to :session
end
