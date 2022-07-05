class CreateBuildingDetails < ActiveRecord::Migration[5.2]
  def change
    create_table :building_details do |t|
      t.references :building, null: false, foreign_key: true
      # t.integer :building_id
      # key value pair??

      t.timestamps
    end
  end
end
