class ParkingLot < ActiveRecord::Base
  belongs_to :car, inverse_of: :parking_lots
  has_many :car_parts, through: :car
end
