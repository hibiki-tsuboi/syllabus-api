# frozen_string_literal: true

FactoryBot.define do
  factory :lecture do
    association :subject
    title { 'ガイダンス' }
    date { '20200423' }
  end
end
