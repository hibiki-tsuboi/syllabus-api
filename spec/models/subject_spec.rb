# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Subject, type: :model do
  before do
    @subject = build(:subject)
  end
  describe 'validates' do
    it 'valid' do
      expect(@subject.valid?).to eq(true)
    end

    it 'title' do
      @subject.title = ''
      expect(@subject.valid?).to eq(false)
    end

    it 'weekday' do
      @subject.weekday = ''
      expect(@subject.valid?).to eq(false)
    end

    it 'period' do
      @subject.period = ''
    end
  end
end
