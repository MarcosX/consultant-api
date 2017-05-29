class Project < ApplicationRecord
  has_many :current_consultants, foreign_key: 'current_project_id', class_name: 'Consultant'
  has_and_belongs_to_many :consultants
end
