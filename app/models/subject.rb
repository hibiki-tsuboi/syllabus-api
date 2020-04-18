class Subject < ApplicationRecord
  has_one :teacher
  has_many :lectures, -> { order(date: :asc) }
end
