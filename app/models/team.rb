class Team < ActiveRecord::Base
	attr_accessible :project_id, :employee_id

	belongs_to :project
	belongs_to :employee

	validates :project_id, :presence => true
  	validates :employee_id, :presence => true

  	
end
