class StudentsController < ApplicationController

  def create 
    render "create.json.jbuilder"
  end

  def update
    student = Student.find_by(id: params[:student_id])
    student.update(
      first_name: params[:first_name] || student.first_name,
      last_name: params[:last_name] || student.last_name,
      email: params[:email] || student.email,
      phone_number: params[:phone_number] || student.phone_number,
      short_bio: params[:short_bio] || student.short_bio,
      linkdin_url: params[:linkdin_url] || student.linkdin_url,
      twitter_handle: params[:twitter_handle] || student.twitter_handle,
      blog_url: params[:blog_url] || student.blog_url,
      resume_url: params[:resume_url] || student.resume_url,
      github_url: params[:github_url] || student.github_url,
      photo_url: params[:photo_url] || student.photo_url,
    )
    redirect_to "/resumes"
  end 

  def destroy
    redirect_to "/resumes"
  end
end
