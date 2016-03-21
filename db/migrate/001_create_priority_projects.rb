class CreatePriorityProjects < ActiveRecord::Migration
  def change
    create_table :priority_projects do |t|
      t.belongs_to :project, index: true, foreign_key: true
      t.integer :is_priority
    end
  end
end
