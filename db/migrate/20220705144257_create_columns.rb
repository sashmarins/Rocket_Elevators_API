class CreateColumns < ActiveRecord::Migration[5.2]
  def change
    create_table :columns do |t|
      t.references :battery, null: false, foreign_key: true
      #building type (already in battery)
      # t.integer :battery_id
      t.integer :number_of_floors_served
      t.string :column_status
      t.text :info
      t.text :notes

      t.timestamps
    end
  end
end
