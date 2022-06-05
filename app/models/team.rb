class Team < ApplicationRecord

  validates :name, presence: true
  validates :prof, presence: true
  validate :email

  has_many :team_users, dependent: :destroy
  has_many :users, through: :team_users
  has_many :manuals, dependent: :destroy
  has_many :askings, dependent: :destroy
end
