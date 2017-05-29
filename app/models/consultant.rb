class Consultant < ApplicationRecord
  belongs_to :home_office, foreign_key: 'home_office_id', class_name: 'Office'
  belongs_to :staffing_office, foreign_key: 'staffing_office_id', class_name: 'Office'
  belongs_to :working_office, foreign_key: 'working_office_id', class_name: 'Office'
  belongs_to :current_project, foreign_key: 'current_project_id', class_name: 'Project'
  has_and_belongs_to_many :projects
end
