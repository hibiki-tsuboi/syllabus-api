class Lecture < ApplicationRecord
  belongs_to :subject

  validates :subject_id, :title, :date, presence: true
  validate :is_once_a_week?

  def is_once_a_week?
    if Lecture.where(subject_id: subject_id, date: date.in_time_zone.all_week).present?
      errors(:date, "授業は週に１限しか登録できません")
    end
  end
end
