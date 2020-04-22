# frozen_string_literal: true

class Subject < ApplicationRecord
  has_one :teacher, dependent: :destroy
  has_many :lectures, -> { order(date: :asc) }, dependent: :destroy

  validates :title, :weekday, :period, presence: true
  validates :period, numericality: true
end
