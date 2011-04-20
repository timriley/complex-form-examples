class Assignment < ActiveRecord::Base
  belongs_to :task
  has_many :steps, :dependent => :destroy

  attr_accessible :owner

  validates_presence_of :owner
  accepts_nested_attributes_for :steps, :allow_destroy => true
  attr_accessible :steps_attributes
end
