class AddColumnsToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :extension, :integer
    add_column :projects, :status, :string
  end
end
