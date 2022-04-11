class CreateContacts < ActiveRecord::Migration[7.0]
  def change
    create_table :contacts do |t|
      t.string :name
      t.string :email
      t.string :project_name
      t.string :project_supply
      t.string :project_price
      t.string :info

      t.timestamps
    end
  end
end
