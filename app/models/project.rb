class Project < ApplicationRecord
  belongs_to :user
  has_many :project_works
  has_many :works, through: :project_works
end
