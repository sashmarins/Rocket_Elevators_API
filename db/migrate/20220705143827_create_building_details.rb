class CreateBuildingDetails < ActiveRecord::Migration[5.2]
  def change
    create_table :building_details do |t|
      t.references :building, null: false, foreign_key: true
      # key value pair??

      t.timestamps
    end
  end
end
