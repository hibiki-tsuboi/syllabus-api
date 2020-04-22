# frozen_string_literal: true

module Api
  module V1
    class LecturesController < ApplicationController
      def index
        subject_ids = []
        if params[:keyword].present?
          @lecrures = Lecture.where('title LIKE ?', "%#{params[:keyword]}%").select(:subject_id).distinct
          @lecrures.each do |key|
            subject_ids << key[:subject_id]
          end
        end
        @subjects = Subject.all
        if subject_ids.present?
          @subjects = @subjects.where('subjects.id IN (?)', subject_ids)
        end
        if params[:teacher_name].present?
          @subjects = @subjects.left_joins(:teacher).where('teachers.name LIKE ?', "%#{params[:teacher_name]}%")
        end
        render json: @subjects, root: 'subjects', adapter: :json
      end
    end
  end
end
