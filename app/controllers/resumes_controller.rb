class ResumesController < ApplicationController
  def index 
    @resumes = Student.all
    render "index.json.jbuilder"
  end

  def  show 
    @resume = Student.find_by(id: params[:id])
    render "show.json.jbuilder"
  end 
end
