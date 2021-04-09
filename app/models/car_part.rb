class CarPart < ActiveRecord::Base
  extend Mobility

  translates :some_car_part_attribute

  belongs_to :car, touch: true

  default_scope { i18n }
end
