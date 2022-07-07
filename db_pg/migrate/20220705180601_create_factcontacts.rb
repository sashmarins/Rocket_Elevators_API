class CreateFactcontacts < ActiveRecord::Migration[5.2]
  def change
    create_table :factcontacts do |t|
      t.string :contactId
      t.datetime :creation_date
      t.string :company_name
      t.string :email
      t.string :project_name
    end
  end
end
