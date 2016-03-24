class SkillsController < ApplicationController

  respond_to :json

  def index
    @skills = Skill.all
  end

  def show
    @skill = Skill.find(params[:id])
  end

end
