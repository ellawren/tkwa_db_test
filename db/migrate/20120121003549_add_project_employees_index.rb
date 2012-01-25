class AddProjectEmployeesIndex < ActiveRecord::Migration
  def up
  	add_index "project_teams", ["employee_id", "project_id"], :name => "index_project_teams_on_project_id_and_employee_id", :unique => true
  	add_index "project_teams", ["employee_id"], :name => "index_project_teams_on_employee_id"
  end

  def down
  	remove_index "project_teams", ["employee_id", "project_id"]
  	remove_index "project_teams", ["employee_id"]
  end
end
