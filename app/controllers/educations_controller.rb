class EducationsController < ApplicationController

  def create
    @education = Education.new(
      start_date: params[:start_date],
      end_date: params[:end_date],
      degree: params[:degree],
      university_name: params[:university_name],
      details: params[:details],
      student_id: params[:student_id]
    )
    @education.save
    redirect_to "/resumes"
  end

  def update
    education = Education.find_by(id: params[:id])
    education.start_date = params[:start_date] || education.start_date
    education.end_date = params[:end_date] || education.end_date
    education.degree = params[:degree] || education.degree
    education.university_name = params[:university_name] || education.university
    education.details = params[:details] || education.details
    redirect_to "/resumes"
  end 

  def destroy
    education = Education.find_by(id: params[:id])
    education.destroy
    redirect_to "/resumes"
  end
  
end
