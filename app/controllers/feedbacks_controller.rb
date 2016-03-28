class FeedbacksController < ApplicationController
  def index
    @feedbacks = Feedback.all
  end

  def new
    @feedback = Feedback.new
  end

  def create
    @feedback = Feedback.new(feedback_params)
    if @feedback.save
      flash[:notice] = "New feedback was successfully added."
      redirect_to feedbacks_path
    else
      render 'new'
    end
  end

  def feedback_params
    params.require(:feedback).permit(:feedback_type, :text)
  end

end
