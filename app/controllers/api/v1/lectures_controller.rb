# frozen_string_literal: true

module Api
  module V1
    class LecturesController < ApplicationController
      def index
        # @subjects = Subject.where('title LIKE ?', "%#{params[:keyword]}%").joins(:teacher).where('teachers.name LIKE ?', "%#{params[:teacher_name]}%")
        # render json: @subjects, root: 'subjects', adapter: :json
        # @subjects = Subject.left_joins(:teacher).where('teachers.name LIKE ?', "%#{params[:teacher_name]}%").left_joins(:lectures).select("*, teachers.name, lectures.title")
        # @subjects = Subject.left_joins(:teacher).left_joins(:lectures)

        subject_ids = []
        if params[:keyword].present?
          @lecrures = Lecture.where('title LIKE ?', "%#{params[:keyword]}%").select(:subject_id).distinct
          @lecrures.each do |key|
            subject_ids << key[:subject_id]
          end
        end
        # binding.pry
        # subject_ids.present?
        @subjects = Subject.all
        if subject_ids.present?
          @subjects = @subjects.where('subjects.id IN (?)', subject_ids)
        end
        if params[:teacher_name].present?
          @subjects = @subjects.left_joins(:teacher).where('teachers.name LIKE ?', "%#{params[:teacher_name]}%")
        end


        # @subjects = Subject.where('subjects.id IN (?)', subject_ids).left_joins(:teacher).where('teachers.name LIKE ?', "%#{params[:teacher_name]}%")
        # @subjects = Subject.left_joins(:teacher).where('teachers.name LIKE ?', "%#{params[:teacher_name]}%")


        # @subjects = Subject.where('subjects.title LIKE ?', "%#{params[:keyword]}%").left_joins(:lectures).or(Lecture.where('lectures.title LIKE ?', "%#{params[:keyword]}%"))
        # @subjects = Subject.joins(:lectures)
        # if params[:teacher_name].present?
        #   @subjects = @subjects.left_joins(:teacher).where('teachers.name LIKE ?', "%#{params[:teacher_name]}%")
        # end

        render json: @subjects, root: 'subjects', adapter: :json
      end
    end
  end
end
