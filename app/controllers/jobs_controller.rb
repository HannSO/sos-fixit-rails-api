class JobsController < ApplicationController

  def new
  end

  def create
    @job = Job.new
  end

end
