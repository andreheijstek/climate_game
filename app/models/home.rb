# Main configuration element (Home contains Floors contains Rooms)
class Home < ApplicationRecord
  has_many :floors, dependent: :destroy
end
