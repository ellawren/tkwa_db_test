class CreateProjectTeams < ActiveRecord::Migration
  def change
    create_table :project_teams do |t|
      t.integer :project_id
      t.integer :employee_id

      t.timestamps
    end
    add_index :project_teams, [:project_id]
  end
end
