# frozen_string_literal: true

def self.seeding(id, title, weekday, period)
  Subject.seed(:id) do |s|
    s.id      = id
    s.title   = title
    s.weekday = weekday
    s.period  = period
  end
end

seeding(1, '統計基礎', 'friday', 3)
seeding(2, '分析基礎', 'friday', 1)
