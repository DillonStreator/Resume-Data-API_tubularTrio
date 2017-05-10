class ResumesController < ApplicationController
  def index 
    @resumes= Students.all
    render "index.json.jbuilder"
  end
end
