class ProjectRequest < ApplicationRecord
  belongs_to :user
  belongs_to :review
  belongs_to :project
  belongs_to :estimate
end
