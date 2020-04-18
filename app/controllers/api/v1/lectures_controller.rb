# frozen_string_literal: true

module Api
  module V1
    class LecturesController < ApplicationController
      def index
        # subjects = Subject.where(title: '統計基礎')
        # render json: { subjects: subjects }
        @hoge = Subject.first
        render json: @hoge
      end
    end
  end
end
