class Project < ApplicationRecord
  has_many :consultants, foreign_key: 'current_project_id'
end
