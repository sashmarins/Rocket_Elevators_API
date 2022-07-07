class CreateElevators < ActiveRecord::Migration[5.2]
  def change
    create_table :elevators do |t|
      t.references :column, null: false, foreign_key: true
      t.integer :serial_number
      t.string :elevator_model
      t.string :elevator_status
      t.string :elevator_commission_date
      t.string :elevator_last_inspection_date
      t.string :elevator_inspection_certificate
      t.text :info
      t.text :notes

      t.timestamps
    end
  end
end
