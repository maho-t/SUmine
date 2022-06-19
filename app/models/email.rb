class Email < ApplicationRecord
  validates :title, presence: true
  validates :text, presence: true
  
  belongs_to :user
  belongs_to :team

  mount_uploader :shiryo, ShiryoUploader
end