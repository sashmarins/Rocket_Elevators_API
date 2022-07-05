class CreateAddresses < ActiveRecord::Migration[5.2]
  def change
    create_table :addresses do |t|
      t.string :address_type
      t.string :address_status
      t.string :entity 
      t.string :street_address
      t.string :suite_or_apartment
      t.string :city
      t.integer :postal_code
      t.string :country
      t.text :notes
      
      t.timestamps
    end
  end
end
