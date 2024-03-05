class Project < ApplicationRecord
  belongs_to :user
  has_many :project_works
  has_many :works, through: :project_work
  has_many :project_requests
  has_many :reviews, through: :project_request
end
