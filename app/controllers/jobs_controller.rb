class JobsController < ApplicationController

  # before_action :authenticate_user!

  def index
    @jobs = Job.all
  end

  def index_where_fixer
    @jobs = Job.where(fixer_id: params[:id])
  end

  def index_where_recipient
    @jobs = Job.where(recipient_id: params[:id])
  end

  def new
  end

  def create
    @job = Job.create(recipient_id: params[:recipient_id], fixer_id: params[:fixer_id], name: params[:name] )
  end

  def show
    @job = Job.find(params[:id])
  end

  def update
    @job = Job.find(params[:id])
    @job.update(job_params)
  end

  def job_params
    params.permit(:review, :rating)
  end

end
