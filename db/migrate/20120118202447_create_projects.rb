class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.float  :number, :null => false, :unique => true
      t.string :name, :null => false
      t.string :location
      t.string :client
      t.string :primary_contact
      t.string :billing_address
      t.string :phone
      t.string :email
      t.string :project_type

      t.timestamps
    end
  end
end
