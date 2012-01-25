class CreateConsultantsProjects < ActiveRecord::Migration
  def change
    create_table :projects_consultants, :id => false do |t|
      t.references :project, :null => false
      t.references :consultant, :null => false

      t.timestamps
    end
    add_index :projects_consultants, [:project_id, :consultant_id], :unique => true
  end
end
