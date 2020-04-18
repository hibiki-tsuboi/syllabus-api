class Subject < ApplicationRecord
  has_one :teacher
  has_many :lectures
end
