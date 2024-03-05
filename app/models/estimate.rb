class Estimate < ApplicationRecord
  belongs_to :user
  has_one :project_request
end
