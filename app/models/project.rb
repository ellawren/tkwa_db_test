class Project < ActiveRecord::Base
  has_many :employees, :through => :teams
  has_many :teams, :dependent => :destroy
  has_and_belongs_to_many :services
  has_and_belongs_to_many :reimbursables
  has_and_belongs_to_many :consultants

  # allows project page to add employees via team join model. must allow destroy.
  accepts_nested_attributes_for :teams, :allow_destroy => true
  accepts_nested_attributes_for :employees

  # allows project page to add items via checkboxes
  accepts_nested_attributes_for :services
  accepts_nested_attributes_for :reimbursables
  accepts_nested_attributes_for :consultants

  validates :number, :presence => true, :uniqueness => true
  validates :name, :presence => true, :length => { :maximum => 60 }

    # regex matches 10-digit phone number with any variation of ()- or spaces as separators 
    # can start with a 1 or nothing. must have area code and correct # of digits.
    # phone_regex = /^1?-?\s?[(]?\d{3}[)-]?\s*\d{3}-?\s?\d{4}$/
    # validates_format_of :phone, :with => phone_regex, :message => "must have 10 digits including area code"
    

end