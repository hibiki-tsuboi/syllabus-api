# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Teacher, type: :model do
  before do
    @teacher = build(:teacher, subject: create(:subject))
  end
  describe 'validates' do
    it 'valid' do
      expect(@teacher.valid?).to eq(true)
    end

    it 'subject_id' do
      @teacher.subject_id = ''
      expect(@teacher.valid?).to eq(false)
    end

    it 'name' do
      @teacher.name = ''
      expect(@teacher.valid?).to eq(false)
    end
  end
end
