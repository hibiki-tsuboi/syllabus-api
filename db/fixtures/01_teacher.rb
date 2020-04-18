# frozen_string_literal: true

def self.seeding(id, subject_id, name)
  Teacher.seed(:id) do |s|
    s.id         = id
    s.subject_id = subject_id
    s.name       = name
  end
end

seeding(1, 1, '山田太郎')
seeding(2, 2, '佐藤花子')
