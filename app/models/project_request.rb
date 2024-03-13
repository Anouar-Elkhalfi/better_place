class ProjectRequest < ApplicationRecord
  has_one :review, dependent: :destroy
  belongs_to :user
  belongs_to :estimate, optional: true
  belongs_to :project
end
