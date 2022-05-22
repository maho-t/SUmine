class Team < ApplicationRecord

  validates :name, presence: true
  validates :prof, presence: true
  validates :email

  has_many :team_users
  has_many :users, through: :team_users
end
