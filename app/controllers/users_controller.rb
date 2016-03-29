class UsersController < ApplicationController

  respond_to :json

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params [:user])
    @skill = Skill.find(params[:skills])
    @user.skill << @skill

    render json: @user

  end

  def user_params
    params.require(:user).permit(:skills)
  end
end
