class StudentsController < ApplicationController

  def index 
    render "index.json.jbuilder"
  end

  def show 
    render "show.json.jbuilder"
  end 

  def create 
    render "create.json.jbuilder"
  end

  def update
    render "update.json.jbuilder"
  end
end
