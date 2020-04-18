# frozen_string_literal: true

class SubjectSerializer < ActiveModel::Serializer
  attributes :id, :title, :weekday, :period
  has_one :teacher
  has_many :lectures
end
