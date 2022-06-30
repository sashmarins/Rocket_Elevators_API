class CreateQuotes < ActiveRecord::Migration[5.2]
  def change
    create_table :quotes do |t|
      t.integer :amount_of_elevators, null: false
      t.integer :amount_of_floors, null: false
      t.integer :final_price
      t.string :building_type, null: false
      t.string :elevator_type, null: false
      t.integer :installation_price

      t.timestamps
    end
  end
end
