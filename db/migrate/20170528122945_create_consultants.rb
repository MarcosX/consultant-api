class CreateConsultants < ActiveRecord::Migration[5.1]
  def change
    create_table :consultants do |t|
      t.string :name
      t.integer :assignment_id
      t.integer :home_office_id
      t.integer :staffing_office_id
      t.integer :working_office_id
      t.integer :current_project_id

      t.timestamps
    end
  end
end
