class CreateBatteries < ActiveRecord::Migration[5.2]
  def change
    create_table :batteries do |t|
      t.references :building, null: false, foreign_key: true
      t.string :building_type
      t.string :battery_status
      t.string :date_of_commission
      t.string :last_inspection_date
      t.string :operations_certificate
      t.text :info
      t.text :notes

      t.timestamps
    end
  end
end
