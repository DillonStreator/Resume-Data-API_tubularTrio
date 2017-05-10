class ResumesController < ApplicationController
  def index 
    @resumes = Student.all
    render "index.json.jbuilder"
  end
end
