class ResumesController < ApplicationController
  def index 
    render "index.json.jbuilder"
  end
end
