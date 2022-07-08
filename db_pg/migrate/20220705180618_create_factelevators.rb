class CreateFactelevators < ActiveRecord::Migration[5.2]
  def change
    create_table :fact_elevators do |t|
      t.string :serial_number
      t.datetime :date_of_commissioning
      t.string :building_id
      t.string :customer_id
      t.string :building_city
    end
  end
end
