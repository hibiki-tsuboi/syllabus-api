# frozen_string_literal: true
Faker::Config.locale = :ja
def self.seeding(id, subject_id, name)
  Teacher.seed(:id) do |s|
    s.id         = id
    s.subject_id = subject_id
    s.name       = name
  end
end
# (1..2).each { |i|
#   seeding(i, i, Faker::Name.name.gsub(" ", ""))
# }
seeding(1, 1, '山田太郎')
seeding(2, 2, '佐藤花子')
