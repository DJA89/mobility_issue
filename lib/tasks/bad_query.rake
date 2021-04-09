namespace :bad_query do
  desc 'This will not work'
  task test: :environment do
    ParkingLot.includes(car: [:car_parts]).references(:car).merge(Car.some_car_scope).find_by(car_id: 8)
  end
end
