class Asking < ApplicationRecord

  validates :question, presence: true
  validates :anser,    presence: true

  belongs_to :user
  belongs_to :team
end
