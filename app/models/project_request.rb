class ProjectRequest < ApplicationRecord
  belongs_to :review
  belongs_to :user
  belongs_to :estimate
  belongs_to :project
end
