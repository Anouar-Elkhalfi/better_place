class ProjectRequest < ApplicationRecord
  has_one :review
  belongs_to :user
  belongs_to :estimate, optional: true
  belongs_to :project
end
