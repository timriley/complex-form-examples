class Category < ActiveRecord::Base
  has_many :categories_projects
  has_many :projects, :through => :categories_projects
  validates_uniqueness_of :name
end
