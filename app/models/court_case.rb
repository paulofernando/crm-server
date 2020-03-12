class CourtCase < ApplicationRecord
  has_many :contacts

  validates :title, presence: true
  validates :value, presence: true
  validates :court_date, presence: true
end
