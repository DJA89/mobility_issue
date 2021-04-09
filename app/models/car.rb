class Car < ActiveRecord::Base
  extend Mobility

  translates :some_car_attribute, :some_other_car_attribute

  has_many :parking_lots

  has_many :car_parts

  default_scope { i18n }

  scope :some_car_scope, -> { where(some_third_car_attribute: true) }
end
