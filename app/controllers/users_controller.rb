class UsersController < ApplicationController

  respond_to :json

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @skill = Skill.find(params[:skills])
    @user.skills << @skill
  end

  def skills
    @skills = Skill.joins(:users).where(users: { id: params[:id] })
  end

  def user_params
    params.require(:user).permit(:skills, :user)
  end

end
