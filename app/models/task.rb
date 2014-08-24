class Task < ActiveRecord::Base
  belongs_to :project

  attr_accessible :name

  validates_presence_of :name

  has_many :assignments, :dependent => :destroy
  accepts_nested_attributes_for :assignments, :allow_destroy => true
  attr_accessible :assignments_attributes

end