class CreateFactquotes < ActiveRecord::Migration[5.2]
  def change
    create_table :factquotes do |t|
      t.string :quote_id
      t.datetime :creation_date
      t.string :company_name
      t.string :email
      t.integer :NbElevator

    end
  end
end
