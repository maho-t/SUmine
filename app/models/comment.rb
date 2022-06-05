class Comment < ApplicationRecord

  validates :comment, presence: true

  belongs_to :user
  belongs_to :team
  belongs_to :manual
end
