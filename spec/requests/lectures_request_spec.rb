# frozen_string_literal: true

require 'rails_helper'

RSpec.describe "Lectures", type: :request do
  describe 'GET #index' do
    it '画面の表示に成功すること' do
      get api_v1_lectures_path
      expect(response).to have_http_status(200)
    end
  end
end
