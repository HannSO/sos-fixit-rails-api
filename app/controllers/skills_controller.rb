class SkillsController < ApplicationController

  respond_to :json

  def index
    @skills = Skill.all
  end

  def show
    @skill = Skill.find(params[:id])
  end

  def users
    @users = User.joins(:skills).where(skills: { id: params[:id] })
  end

end
