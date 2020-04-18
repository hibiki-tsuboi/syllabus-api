# frozen_string_literal: true

def self.seeding(id, subject_id, title, date)
  Lecture.seed(:id) do |s|
    s.id         = id
    s.subject_id = subject_id
    s.title      = title
    s.date       = date
  end
end

seeding(1, 1, 'ガイダンス', '20200423')
seeding(2, 1, '確率変数と確率分布', '20200430')
