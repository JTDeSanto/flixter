class LessonsController < ApplicationController
  before_action :authenticate_user!
 before_action :require_authorized_user_for_lesson, only: [:show]

  def show  
  end

  private


  def require_authorized_user_for_lesson
    if current_user.enrolled_in?(current_lesson.section.course) == false
      
      redirect_to course_path(current_lesson.section.course), alert: "Please Enroll in Course to View Lesson"

    end
  end

  helper_method :current_lesson
    def current_lesson
      @current_lesson ||= Lesson.find(params[:id])
    end

  

end
