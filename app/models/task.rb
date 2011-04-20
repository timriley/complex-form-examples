class Task < ActiveRecord::Base
  belongs_to :project
  has_many :assignments, :dependent => :destroy
  validates_presence_of :name
  accepts_nested_attributes_for :assignments, :allow_destroy => true
end