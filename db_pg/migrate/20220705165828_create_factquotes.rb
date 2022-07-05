class CreateFactquotes < ActiveRecord::Migration[5.2]
  def change
    create_table :factquotes do |t|
      
      t.references :quote, null: false, foreign_key: true
    end
  end
end
