class TalksController < ApplicationController
  def new
    @talk = Talk.new
  end

  def create
    @talk = Talk.new(params[:talk])
    if @talk.save
      redirect_to root_url, notice: "Your talk has been submitted for review!"
    else
      flash[:alert] = "Your proposal couldn't be submitted!"
      render :new
    end
  end

  def approve
    @talks = Talk.pending.map { |talk| TalkDecorator.new(talk) }
  end

private
  def talk_params
    params.require(:talk).permit(:title, :duration, :email, :description, :twitter)
  end
end
