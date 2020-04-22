# frozen_string_literal: true

FactoryBot.define do
  factory :teacher do
    association :subject
    name { '山田太郎' }
  end
end
