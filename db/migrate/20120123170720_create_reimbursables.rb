class CreateReimbursables < ActiveRecord::Migration
  def change
    create_table :reimbursables do |t|
      t.string :name

      t.timestamps
    end
  end
end
