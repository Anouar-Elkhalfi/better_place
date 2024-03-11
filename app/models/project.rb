class Project < ApplicationRecord
  belongs_to :user
  has_many :project_works, dependent: :destroy
  has_many :works, through: :project_works
  has_many :project_requests
  has_one_attached :photo
  # has_many :reviews, through: :project_request
  has_many :messages, dependent: :destroy

  validates :description, presence: true
  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?
end
