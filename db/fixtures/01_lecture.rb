# frozen_string_literal: true

def self.seeding(id, subject_id, title, date)
  Lecture.seed(:id) do |s|
    s.id         = id
    s.subject_id = subject_id
    s.title      = title
    s.date       = date
  end
end

seeding(1, 1, 'ガイダンスA', '20200423')
seeding(2, 1, '確率変数と確率分布AB', '20200430')
seeding(3, 2, 'ガイダンスAC', '20200423')
seeding(4, 2, '分析変数と分析分布AC', '20200430')
