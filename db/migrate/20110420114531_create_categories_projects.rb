class CreateCategoriesProjects < ActiveRecord::Migration
  def self.up
    create_table :categories_projects do |t|
      t.integer :project_id
      t.integer :category_id

      t.timestamps
    end
  end

  def self.down
    drop_table :categories_projects
  end
end
