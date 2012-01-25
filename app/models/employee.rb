class Employee < ActiveRecord::Base
	#attr_accessible :name, :number

	has_many :projects, :through => :teams
	has_many :teams, :dependent => :destroy

	# allows project page to add employees via team join model. must allow destroy.
    accepts_nested_attributes_for :teams, :allow_destroy => true

	validates :name, :presence => true
  	#validates :number, :presence => true, :uniqueness => true

  	default_scope :order => 'employees.number ASC'


end
