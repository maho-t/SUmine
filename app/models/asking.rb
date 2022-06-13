class Asking < ApplicationRecord

  validates :question, presence: true
  validates :answer,    presence: true

  belongs_to :user
  belongs_to :team

  acts_as_taggable
  acts_as_taggable_on :skills, :interests

  def new_arrival?
    created_at + 1.week > Date.today
  end
end
