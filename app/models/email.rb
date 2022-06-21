class Email < ApplicationRecord
  validates :title, presence: true
  
  belongs_to :user
  belongs_to :team
  has_many_attached :images

end
