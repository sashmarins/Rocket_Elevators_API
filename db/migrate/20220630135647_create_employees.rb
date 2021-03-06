class CreateEmployees < ActiveRecord::Migration[5.2]
  def change
    create_table :employees do |t|
      t.string :first_name
      t.string :last_name
      t.string :title
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
