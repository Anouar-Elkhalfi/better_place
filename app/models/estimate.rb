class Estimate < ApplicationRecord
  belongs_to :user
  has_many :project_request
end
