class JobsController < ApplicationController
  def index
    @jobs = Job.all
  end

  def new
    @job = Job.new
  end

  def create
    @job = Job.new(job_params)
    if @job.save
      redirect_to root_url,
        :notice => "Your job has been submitted!"
    else
      flash[:alert] = "Your proposal couldn't be submitted!"
      render :new
    end
  end

  def view
    @job = Job.find(params[:id])
  end

  def delete
    @job = Job.find(params[:id])
    if @job != nil && @job.destroy
      redirect_to root_url,
        :notice => @job['name'] + "'s job has been deleted!"
    else
      redirect_to jobs_path
    end
  end

private
  def job_params
    params.require(:job).permit(
      :title, :email, :name, :description, :requirement, :start_date, :end_date)
  end
end
