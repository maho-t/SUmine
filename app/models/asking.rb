class Asking < ApplicationRecord

  validates :question, presence: true
  validates :answer,    presence: true

  belongs_to :user
  belongs_to :team
end
