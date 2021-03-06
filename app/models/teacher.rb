# frozen_string_literal: true

class Teacher < ApplicationRecord
  belongs_to :subject

  validates :subject_id, :name, presence: true
end
