class Email < ApplicationRecord
  validates :title, presence: true
  
  belongs_to :user
  belongs_to :team
  has_many_attached :images

  def new_arrival?
    created_at + 1.week > Date.today
  end
end
