# frozen_string_literal: true

module Api
  module V1
    class LecturesController < ApplicationController
      def index
        subjects = Subject.order(created_at: :desc)
        render json: { subjects: subjects }
      end
    end
  end
end
