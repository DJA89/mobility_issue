class CreateCarParkingLotAndCarPart < ActiveRecord::Migration[5.2]
  def change
    create_table :cars do |t|
      # t.string :some_car_attribute
      # t.string :some_other_car_attribute
      t.jsonb :some_car_attribute, default: {}
      t.jsonb :some_other_car_attribute, default: {}
      t.boolean :some_third_car_attribute

      t.timestamps
    end

    create_table :parking_lots do |t|
      t.integer :car_id

      t.timestamps
    end

    create_table :car_parts do |t|
      #t.text :some_car_part_attribute
      t.jsonb :some_car_part_attribute, default: {}
      t.integer :car_id

      t.timestamps
    end

    add_index "parking_lots", ["car_id"], name: "index_parking_lots_on_car_id", using: :btree
    add_index "car_parts", ["car_id"], name: "index_car_parts_on_car_id", using: :btree
  end
end
