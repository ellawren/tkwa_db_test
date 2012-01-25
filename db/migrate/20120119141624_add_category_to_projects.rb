class AddCategoryToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :category, :integer
  end
end
