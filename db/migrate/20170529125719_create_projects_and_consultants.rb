class CreateProjectsAndConsultants < ActiveRecord::Migration[5.1]
  def change
    create_table :consultants_projects, id: false  do |t|
      t.belongs_to :project, index: true
      t.belongs_to :consultant, index: true
    end
  end
end
