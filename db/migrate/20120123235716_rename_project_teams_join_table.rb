class RenameProjectTeamsJoinTable < ActiveRecord::Migration
  def up
  	rename_table :project_teams, :teams
  end

  def down
  	rename_table :teams, :project_teams
  end
end
