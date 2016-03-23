class SkillsController < ApplicationController

  def index
    @skills = Skill.all
  end
  
end
