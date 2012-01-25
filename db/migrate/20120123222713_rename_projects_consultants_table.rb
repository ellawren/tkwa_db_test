class RenameProjectsConsultantsTable < ActiveRecord::Migration
  def up
  	rename_table :projects_consultants, :consultants_projects
  end

  def down
  	rename_table :consultants_projects, :projects_consultants
  end
end
