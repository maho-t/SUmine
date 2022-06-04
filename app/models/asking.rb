class Asking < ApplicationRecord

  validates :question, presence: true
  validates :answer,    presence: true

  belongs_to :user
  belongs_to :team

  acts_as_taggable
  acts_as_taggable_on :skills, :interests
end
