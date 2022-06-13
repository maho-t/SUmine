class Manual < ApplicationRecord
  validates :title, presence: true
  validates :manual_text, presence: true
  
  belongs_to :user
  belongs_to :team
  has_many :comments, dependent: :destroy

  mount_uploader :shiryo, ShiryoUploader

  def new_arrival?
    created_at + 1.week > Date.today
  end
end
