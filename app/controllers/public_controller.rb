class PublicController < ApplicationController
  layout 'public'
  def index
    @institutes = Institute.all
    @courses = Course.all
  end

  def search_enrollment
    @enrollment = Enrollment.find_by(enrollment_no: params[:enrollment_no])
    @student = @enrollment&.student
  end
  
end

