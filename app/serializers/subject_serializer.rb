# frozen_string_literal: true

class SubjectSerializer < ActiveModel::Serializer
  attributes :id, :title, :weekday, :period
  has_one :teacher, serializer: TeacherSerializer
  has_many :lectures, serializer: LectureSerializer
end
