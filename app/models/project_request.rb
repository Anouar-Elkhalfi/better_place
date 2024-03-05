class ProjectRequest < ApplicationRecord
  belongs_to :review
  belongs_to :user
  belongs_to :estimate, optional: true
  belongs_to :project
end
