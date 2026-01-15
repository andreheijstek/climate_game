# Group class for Rooms
class Floor < ApplicationRecord
  belongs_to :home
  has_many :rooms, dependent: :destroy
end
