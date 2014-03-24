class ResumesController < ApplicationController
  def index
    @resumes = Resume.all
  end

  def new
    @resume = Resume.new
  end
  
  def create
    @resume = Resume.new(resume_params)
    if @resume.save
      redirect_to root_url,
        :notice => "Your resume has been submitted!"
    else
      flash[:alert] = "Your resume couldn't be submitted!"
      render :new
    end
  end

  def view
    @resume = Resume.find(params[:id])
  end
  
private
  def resume_params
    params.require(:resume).permit(
      :email, :name, :personal_info, :education, :career_objective, :work_experience, :skill, :hoppy)
  end
end
