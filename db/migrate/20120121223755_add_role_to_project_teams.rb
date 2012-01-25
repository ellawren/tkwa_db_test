class AddRoleToProjectTeams < ActiveRecord::Migration
  def change
  	add_column :project_teams, :role, :string
  end
end
