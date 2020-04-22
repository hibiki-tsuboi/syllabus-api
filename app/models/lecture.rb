# frozen_string_literal: true

class Lecture < ApplicationRecord
  belongs_to :subject

  validates :subject_id, :title, :date, presence: true
  validate :once_a_week?

  def once_a_week?
    if Lecture.where(subject_id: subject_id, date: date.in_time_zone.all_week).present?
      errors(:date, "授業は週に１限しか登録できません")
    end
  end
end
