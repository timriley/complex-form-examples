class Project < ActiveRecord::Base
  has_many :tasks, :dependent => :destroy
  validates_presence_of :name
  accepts_nested_attributes_for :tasks, :allow_destroy => true
  attr_accessible :name, :tasks_attributes

  has_many :categories_projects
  has_many :categories, :through => :categories_projects
  accepts_nested_attributes_for :categories
  attr_accessible :category_ids, :categories_attributes
end