class Email < ApplicationRecord
  validates :title, presence: true
  validates :text, presence: true
  
  belongs_to :user
  belongs_to :team
end
