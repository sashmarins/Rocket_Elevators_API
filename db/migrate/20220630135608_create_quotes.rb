class CreateQuotes < ActiveRecord::Migration[5.2]
  def change
    create_table :quotes do |t|
      t.integer :amount_of_elevators
      t.integer :amount_of_floors
      t.string :final_price
      t.string :building_type
      t.string :elevator_type
      t.string :installation_price

      t.timestamps
    end
  end
end
