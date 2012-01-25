class RenameServicesColumn < ActiveRecord::Migration
  def change
  	rename_column :services, :service, :name
  end
end
