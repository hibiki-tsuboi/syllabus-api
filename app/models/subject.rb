class Subject < ApplicationRecord
  has_one :teacher
  has_many :lectures, -> { order(date: :asc) }

  validates :title, :weekday, :period, presence: true
  validates :period, numericality: true
end
