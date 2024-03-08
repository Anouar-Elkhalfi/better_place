class Work < ApplicationRecord
  has_many :project_works, dependent: :destroy
end
