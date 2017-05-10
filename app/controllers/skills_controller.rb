class SkillsController < ApplicationController


  def show 
    @skill = Skill.find_by(id: params[:id])
    
    redirect_to "show.json.jbuilder"
  end 

  def create

    @skill=Skill.new(
      skill: params[:skill]) 
    redirect_to "/resumes"
  end

  def update
    @skill = Skill.find_by(id: params[:id])
    @skill.skill = params[:skill] || @skill.skill
    redirect_to "/resumes"
  end 

  def destroy
    @skill = Skill.find_by(id: params[:id])
    @skill.destroy
    redirect_to "/resumes"
  end
end
