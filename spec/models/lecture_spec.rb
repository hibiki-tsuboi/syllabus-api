# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Lecture, type: :model do
  before do
    @lecture = build(:lecture, subject: create(:subject))
  end
  describe 'validates' do
    it 'valid' do
      expect(@lecture.valid?).to eq(true)
    end

    it 'subject_id' do
      @lecture.subject_id = ''
      expect(@lecture.valid?).to eq(false)
    end

    it 'title' do
      @lecture.title = ''
      expect(@lecture.valid?).to eq(false)
    end

    # it 'date' do
    #   @lecture.date = ''
    #   expect(@lecture.valid?).to eq(false)
    # end
  end
end
