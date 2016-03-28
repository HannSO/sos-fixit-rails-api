class UsersController < ApplicationController

  respond_to :json

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
    # @skill = Skill.find(params [:skill])
    # @user.skill << @skill
  end

  def update
    @user = User.find(params[:user])
    @skill = Skill.find(params[:skill])
    @user.skills << @skill
    render json: @user

  end

  def user_params
    params.require(:user).permit(:skills, :user)
  end

end
