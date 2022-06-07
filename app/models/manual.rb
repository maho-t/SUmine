class Manual < ApplicationRecord
  validates :title, presence: true
  validates :manual_text, presence: true
  
  belongs_to :user
  belongs_to :team
  has_many :comments, dependent: :destroy

  mount_uploader :shiryo, ShiryoUploader
end
