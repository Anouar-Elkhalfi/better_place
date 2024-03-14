class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :projects, dependent: :destroy
  has_many :estimates
  has_many :reviews
  has_many :messages, dependent: :destroy
  has_many :project_requests
  has_one_attached :photo
end
