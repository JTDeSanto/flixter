class TeamController < ApplicationController

  def index
    @user = User.all
    @courses = Course.all
  end

#  def course_instructor
#    @courses.each do |course|
#      if course.user_id == @user.user_id
#        @instructor = @user.first_name
#  end
end
