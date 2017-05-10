class CapstonesController < ApplicationController

  def index
    @capstones = Capstone.all 
    render "index.json.jbuilder"
  end

  def show
    @capstones = Capstone.find_by(id: params[:id]) 
    render "show.json.jbuilder"
  end 

  def create
    @capstone = Capstone.new(
      name: params[:name],
      description: params[:description],
      url: params[:url],
      screenshot_url: params[:screenshot_url],
      student_id: params[:student_id]
    )
    @capstone.save
    redirect_to "/resumes"
  end

  def update
    @capstone = Capstone.find_by(id: params[:id])
    @capstone.name = params[:name] || @capstone.name
    @capstone.description = params[:description] || @capstone.description
    @capstone.url = params[:url] || @capstone.url
    @capstone.screenshot_url = params[:screenshot_url] || @capstone.screenshot_url
    @capstone.student_id = params[:student_id] || @capstone.student_id
    @capstone.save
    redirect_to "/resumes"
  end 

  def destroy
    @capstone = Capstone.find_by(id: params[:id])
    @capstone.destroy
    redirect_to "/resumes"
  end
end
