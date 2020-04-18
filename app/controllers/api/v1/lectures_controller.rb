# frozen_string_literal: true

module Api
  module V1
    class LecturesController < ApplicationController
      def index
        @subjects = Subject.where('title LIKE ?', "%#{params[:keyword]}%")
        render json: @subjects, root: 'subjects', adapter: :json
      end
    end
  end
end
